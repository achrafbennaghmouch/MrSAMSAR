package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.Categorie;





public class CategorieDao {
	private static Connexion C = new Connexion();
public static boolean AddCategorie(Categorie cat) throws ClassNotFoundException, SQLException {
		
		C.Connect();
		
		int res = C.MAJ("insert into categorie (nom,description) values ('"+cat.getNom()+"','"+cat.getDescription()+"')");
		C.Disconnect();
		return res == 1;
	}
public static boolean DeleteCategorie (int idcat) throws ClassNotFoundException, SQLException {
	C.Connect();
	int res= C.MAJ("delete from categorie where id="+idcat);
	C.Disconnect();
	return res == 1;
	}
public static boolean updateCategorie(Categorie cat) throws ClassNotFoundException, SQLException {
	C.Connect();
	int res = C.MAJ("UPDATE `categorie` SET`nom`='"+cat.getNom()+"',`description`='"+cat.getDescription()+"' WHERE id="+cat.getId());
	C.Disconnect();
	return res == 1;
}
public  ArrayList<Categorie> getAlllists() throws ClassNotFoundException, SQLException{
	ArrayList<Categorie> lists = new ArrayList<Categorie>();
	C.Connect();
	ResultSet res = C.Select("select * from categorie");
	while(res.next()) {
	Categorie	l = new Categorie( res.getInt(1), res.getString(2),res.getInt(3),res.getDate(4), res.getString(5));
		lists.add(l);
	}
	C.Disconnect();
	return lists;
}
public static boolean  CategorieexistByName(String name) throws ClassNotFoundException, SQLException {
	C.Connect();
	ResultSet res = C.Select("select * from categorie where nom='"+name+"'");
	boolean resbool= false ;
	if(res.next()) {
	resbool=true;}
	C .Disconnect();
	return resbool;
	
}
public static boolean  CategorieexistById(int id) throws ClassNotFoundException, SQLException {
	C.Connect();
	ResultSet res = C.Select("select * from categorie where id="+id);
	boolean resbool= false ;
	if(res.next()) {
	resbool=true;}
	C .Disconnect();
	return resbool;
	
}
public static Categorie getCategorieById(int idcat) throws ClassNotFoundException, SQLException {
	C. Connect();
	ResultSet res = C.Select("select * from categorie where id="+idcat);
	Categorie cat = null;
	if(res.next()) {
	cat = new Categorie(res.getString ("nom"), res.getString ("description"));
}
	C .Disconnect();
	return cat;
}
}
