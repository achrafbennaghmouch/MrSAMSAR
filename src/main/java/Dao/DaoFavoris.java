package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import Models.Annonce;


public class DaoFavoris {
	private static Connexion C = new Connexion();
	public static boolean AjouterAnnonce(int idan,int idc) throws SQLException, ClassNotFoundException {
		C.Connect();
		int res=C.MAJ("insert into favoris(idan,idc)VALUES("+idan+","+idc+")");
		C.Disconnect();
		if(res==1) {
			return true;
		}
		return false;
	} 
	public static boolean DeleteAnnonce(int idf) throws SQLException, ClassNotFoundException {
		C.Connect();
		int res=C.MAJ("delete from favoris where idan="+idf);
		C.Disconnect();
		if(res==1) {
			return true;
		}
		return false;
	} 
	public static boolean  Annonceexist(int idan) throws ClassNotFoundException, SQLException {
		C.Connect();
		ResultSet res = C.Select("select * from favoris where idan="+idan);
		boolean resbool= false ;
		if(res.next()) {
		resbool=true;}
		C .Disconnect();
		return resbool;
		
	}
	public static ArrayList<Annonce> getAlllists(int idc) throws ClassNotFoundException, SQLException{
		ArrayList<Annonce> lists = new ArrayList<Annonce>();
		C.Connect();
		ResultSet res = C.Select("select idan from favoris where idc="+idc);
		while(res.next()) {
		lists.add(DaoAnnonce.getAnnonceById(res.getInt("idan")));
		}
		C.Disconnect();
		return lists;
	}
	
	
}
