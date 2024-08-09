package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import Adress.Adress;
import enums.TypeAdress;


public class DaoAdress {
	private static Connexion C = new Connexion();


	//------------------------------------------Adress-----------------------------------------------------------------------------	
	public static Adress getAdressById(int id) throws ClassNotFoundException, SQLException {
		C.Connect();
		Adress adr=null;
		ResultSet res = C.Select("select * from adress where idT="+id);
		if(res.next()) {
			    TypeAdress type = TypeAdress.valueOf(res.getString("type"));
			    adr=new Adress(res.getInt("id"), res.getString("ville"), res.getString("province"), res.getString("quartier"),type);
		}
		C.Disconnect();
		return adr;	
	}
//----------------------------------------------Adress-----------------------------------------------------------------------------
	public static Adress getAdressByIdType(int idType,TypeAdress type) throws ClassNotFoundException, SQLException {
		C.Connect();
		Adress adr=null;
		ResultSet res = C.Select("select * from adress where idT="+idType+" and type='"+type+"' ");
		if(res.next()) {
			    adr=new Adress(res.getInt("id"), res.getString("ville"), res.getString("province"), res.getString("quartier"),type);
		}
		C.Disconnect();
		return adr;	
	}
//--------------------------------------------Modifier Adress-----------------------------------------------------------------------------	
	public static boolean ModifierAdress(Adress adr) throws ClassNotFoundException, SQLException {
		C.Connect();
		boolean updt=false;
		int res=C.MAJ("UPDATE adress set  ville='"+adr.getVille()+"',province='"+adr.getProvince()+"', quartier='"+adr.getQuartier()+"' where id="+adr.getId());
		if(res==1) {updt=true;}
		C.Disconnect();
		return updt;
	}
	
	public static Adress getAdressAnnonceById(int id) throws ClassNotFoundException, SQLException {
		C.Connect();
		Adress adr=null;
		Adress adre=null;
		ResultSet res = C.Select("select * from adress where type='Annonce' and idT="+id);
		if(res.next()) {
			    TypeAdress type = TypeAdress.valueOf(res.getString("type"));
			    adr=new Adress(res.getInt("id"), res.getString("ville"), res.getString("province"), res.getString("quartier"),type);
			    adre=new Adress(res.getInt("id"), res.getString("ville"), res.getString("province"), res.getString("quartier"));
		}
		C.Disconnect();
		return adr;	
	}
}
