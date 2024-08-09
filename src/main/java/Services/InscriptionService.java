package Services;

import java.sql.SQLException;
import Dao.DaoUser;
import Models.User;



public class InscriptionService {

	public  static boolean addUser(User u) throws ClassNotFoundException, SQLException {
		if(!DaoUser.UserexistBylogin(u.getC().getLogin())) {
			return DaoUser.AddUser(u);	
		}
		return false;
	}
	
}
