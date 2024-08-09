package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import Models.Compte;
import Models.User;



public class DaoCompte {
	private static Connexion C = new Connexion();
	//---------------------------Pour Authentification----------------------------------------------------------------
	
	public static User authentification(String login,String password) throws SQLException, ClassNotFoundException {
		C.Connect();
		Compte c=null;
		User u=null;
		
		ResultSet res = C.Select("select *  from compte where email ='"+login+"' and password ='"+password+"'");
			if(res.next()) {
				   u=DaoUser.getUserById(res.getInt("idu"));
						   c = new Compte(res.getInt("idc"), res.getString("email"), res.getString("password"), res.getString("image"), res.getInt("numtel"), false);
						   u.setC(c);
			}
		C.Disconnect();
	return u;
	}

//---------------------------------------------------------------------------------------------
public static Compte getCompteById(int idc) throws ClassNotFoundException, SQLException {
	C.Connect();
	Compte c =null;
	ResultSet res = C.Select("select *  from compte where idc="+idc);
	if(res.next()) {
		 c = new Compte(res.getInt("idc"), res.getString("email"), res.getString("password"), res.getString("image"), res.getInt("numtel"), false);
	}
  C.Disconnect();
   return c;
}
}
