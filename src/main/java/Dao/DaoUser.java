package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import Adress.Adress;
import Models.User;
import enums.TypeAdress;
import enums.TypeRole;


public class DaoUser {
	private static Connexion C = new Connexion();
	
     //----------------------------------------ROLE------------------------------------------------------------------
	    public static TypeRole getRole(String login) throws ClassNotFoundException, SQLException {
	    	C.Connect();
	    	if(!(login.equals("admin@gmail.com"))) {
	    		return TypeRole.Client;
	    	}
	    	C.Disconnect();
	    	return TypeRole.Admin;
	    }
	 //----------------------------------------------------------------------
	    public static User getUserById(int idu) throws SQLException, ClassNotFoundException {
	    	C.Connect();
	    	User u = null;
	    	 ResultSet rs=C.Select("select * from personne where id="+idu);
	    	 if(rs.next()) {
	    		 Adress adr=DaoAdress.getAdressByIdType(idu,TypeAdress.Client);
	                 u = new User(rs.getInt("id"), rs.getString("nom"), rs.getString("prenom"), rs.getTimestamp("datenaissance").toString(),TypeRole.Client, null,adr);
	    	 }
	    	C.Disconnect();
	    	return u;
	    }

//--------------------------Pour Inscription-----------------------------------------------------------------------
	public static boolean  UserexistBylogin(String login) throws ClassNotFoundException, SQLException {
		C.Connect();
		ResultSet res = C.Select("select * from compte where email='"+login+"'");
		boolean resbool= false ; 
		if(res.next()) {
		resbool=true;}
		C .Disconnect();
		return resbool;
		
}
	//-----------------------------Ajouter User---------------------------------------------------
public static boolean AddUser(User u) throws ClassNotFoundException, SQLException {
		C.Connect();
		boolean added=false;
		int id=0;
		String image = "pardefaut.jpg";
		if(!(u.getC().getLogin().equals("admin@gmail.com") && u.getC().getPassword().equals("admin123"))) {
		String	role ="Client";
		int res = C.MAJ("insert into personne (nom,prenom,datenaissance,role) values ('"+u.getNom()+"','"+u.getPrenom()+"','"+u.getDatenaissance()+"','"+role+"')");
		if(res == 1) {
			 ResultSet rs = C.Select("select MAX(id) from personne ");
			 rs.next();
			  id = rs.getInt(1);
			  C.MAJ("insert into compte (email,password,numtel,image,isactive,idu) values ('"+u.getC().getLogin()+"','"+u.getC().getPassword()+"','"+u.getC().getNumtel()+"','"+image+"','1',"+id+")");
			  added = true;
		}
		}
		C.Disconnect();
			return added;
	}
//--------------------------------------Update User------------------------------------------
public static boolean ModifierUser(User u,int numtel_user) throws SQLException, ClassNotFoundException {
	C.Connect();
	boolean updt=false;
	int res=C.MAJ("UPDATE personne set  nom='"+u.getNom()+"',prenom='"+u.getPrenom()+"', datenaissance='"+u.getDatenaissance()+"' where id="+u.getId());
	int idc=u.getC().getId();
    int rs =C.MAJ("UPDATE compte set numtel='"+numtel_user+"' where idc="+idc);
	C.Disconnect();
    if(res==1 && rs==1){updt=true;}
    C.Disconnect();
    return updt;
}

//--------------------------------------------------------------------------------	

	
}
