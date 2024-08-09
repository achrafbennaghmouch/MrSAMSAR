package Tools;

import java.sql.SQLException;

import Dao.DaoAnnonce;
import Models.Annonce;



public class Tools {
	public static String ArrayToFormatJason(int idu) throws ClassNotFoundException, SQLException {
		
		String html="[";
		for(Annonce an:DaoAnnonce.AllAnnonces(idu)){
			html+=an.getJsonFormat()+",";
		}
		html = html.substring(0, html.length()-1);
	   html+="]";
		
		return html;
		
	}

}
