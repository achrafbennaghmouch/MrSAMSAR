package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import Adress.Adress;
import Models.Annonce;
import enums.TypeAdress;
import enums.TypeAnnonce;



public class DaoAnnonce {
	private static Connexion C = new Connexion();
	
	public static Annonce getAnnonceByIdCompte(int idu) throws ClassNotFoundException, SQLException {
		C.Connect();
		Annonce Ann =null;
		ResultSet res =C.Select("select * from annonce where idu="+idu);
		if(res.next()) {
			TypeAnnonce type = TypeAnnonce.valueOf(res.getString("type"));
			Adress adr=DaoAdress.getAdressByIdType(idu,TypeAdress.Annonce);
			 Ann = new Annonce(res.getInt("id"), res.getString("titre"), res.getFloat("prix"),res.getString("description"),res.getTimestamp("datecreation").toString(), res.getInt("nbrpieces"),res.getInt("nbrbains"), res.getString("image"), res.getInt("surface"), type,adr);
			
			}
		C.Disconnect();
	return Ann;
	}
	public static Annonce getAnnonceById(int id) throws ClassNotFoundException, SQLException {
		C.Connect();
		Annonce Ann =null;
		ResultSet res =C.Select("select * from annonce where id="+id);
		if(res.next()) {
			TypeAnnonce type = TypeAnnonce.valueOf(res.getString("type"));
			Adress adr=DaoAdress.getAdressByIdType(id,TypeAdress.Annonce);
			Ann = new Annonce(res.getInt("id"), res.getString("titre"), res.getFloat("prix"),res.getString("description"),res.getTimestamp("datecreation").toString(), res.getInt("nbrpieces"),res.getInt("nbrbains"), res.getString("image"), res.getInt("surface"), type,adr);
			
			}
		C.Disconnect();
	return Ann;
	}
	
	public static ArrayList<Annonce> AllAnnonces(int idu) throws ClassNotFoundException, SQLException{
		C.Connect();
		ArrayList<Annonce> Listes = new ArrayList<Annonce>();
		
		ResultSet res=C.Select("select * from annonce where idp="+idu);
		while(res.next()) {
			TypeAnnonce type = TypeAnnonce.valueOf(res.getString("type"));
			Adress adr=DaoAdress.getAdressByIdType(idu,TypeAdress.Annonce);
			Annonce  Ann = new Annonce(res.getInt("id"), res.getString("titre"), res.getFloat("prix"),res.getString("description"),res.getTimestamp("datecreation").toString(), res.getInt("nbrpieces"),res.getInt("nbrbains"), res.getString("image"), res.getInt("surface"), type,adr); 
			Listes.add(Ann);
		}
		C.Disconnect();
		return Listes;
	}
	public  ArrayList<Annonce> getAlllists() throws ClassNotFoundException, SQLException{
		ArrayList<Annonce> lists = new ArrayList<Annonce>();
		C.Connect();
		ResultSet res = C.Select("select * from annonce");
		while(res.next()) {
			TypeAnnonce type ;
			if(TypeAnnonce.Louer.toString().equals(res.getString(9))) {
				type = TypeAnnonce.Louer;
			}else {
				type = TypeAnnonce.Vendre;
			}
		Annonce	l = new Annonce( res.getInt(1),res.getString(2), res.getFloat(3),res.getString(4),res.getString(5), res.getInt(6),res.getInt(7),res.getString(8),res.getInt(9),type,DaoAdress.getAdressAnnonceById( res.getInt(1)));
			lists.add(l);
		}
		C.Disconnect();
		return lists;
	} 
	
	public static String AllAnnoncesFormatJason(int idu) throws ClassNotFoundException, SQLException{
		C.Connect();
		String  abc="";
		  for(Annonce a:AllAnnonces(idu)) {
			  abc +=a.getJsonFormat();
		  }
		C.Disconnect();
		return abc;
	}
	
	
	
	public static boolean AjouterAnnonce(Annonce anc,int idu) throws SQLException, ClassNotFoundException {
		C.Connect();
		int res=C.MAJ("insert into annonce(titre,prix,description,nbrpieces,nbrbains,image,surface,type,idp)VALUES('"+anc.getTitre()+"',"+anc.getPrix()+",'"+anc.getDescription()+"',"+anc.getNbrpieces()+","+anc.getNbrbains()+",'"+anc.getImage()+"',"+anc.getSurface()+",'"+anc.getType()+"',"+idu+")");
		C.Disconnect();
		if(res==1) {
			return true;
		}
		return false;
	} 
	
	public static boolean supprimerAnnonce(int idAn) throws SQLException, ClassNotFoundException {
		C.Connect();
		int res=C.MAJ("delete from annonce where id="+idAn);
		C.Disconnect();
		if(res==1) {
			return true;
		}
		return false;
	}
	public static boolean ModifierAnnonce(Annonce an) throws SQLException, ClassNotFoundException {
		C.Connect();
		int res=C.MAJ("UPDATE annonce set titre='"+an.getTitre()+"',prix="+an.getPrix()+",description='"+an.getDescription()+"',nbrpieces="+an.getNbrpieces()+",nbrbains="+an.getNbrbains()+",image='"+an.getImage()+"',surface="+an.getSurface()+",type='"+an.getType()+"'where id="+an.getId());
	    C.Disconnect();
	    if(res==1) {
	    	return true;
	    }
	    return false;
	}
	
}
