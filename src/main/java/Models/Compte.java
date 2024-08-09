package Models;

import com.google.gson.Gson;


public class Compte {
	 private int id;
	 private String login,password,image;
	 private int numtel; 
	 private boolean Isactive ;
	 
	 public Compte() {
		super();
	}

	public Compte(int id, String login, String password, String image, int numtel, boolean isactive) {
		super();
		this.id = id;
		this.login = login;
		this.password = password;
		this.image = image;
		this.numtel = numtel;
		Isactive = isactive;
	}

	public Compte(String login, String password, String image, int numtel, boolean isactive) {
		super();
		this.login = login;
		this.password = password;
		this.image = image;
		this.numtel = numtel;
		Isactive = isactive;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getNumtel() {
		return numtel;
	}

	public void setNumtel(int numtel) {
		this.numtel = numtel;
	}

	public boolean isIsactive() {
		return Isactive;
	}

	public void setIsactive(boolean isactive) {
		Isactive = isactive;
	}

	@Override
	public String toString() {
		return "Compte [id=" + id + ", login=" + login + ", password=" + password + ", image=" + image + ", numtel="
				+ numtel + ", Isactive=" + Isactive + "]";
	}
	public String getJsonFormat() {
		Gson g = new Gson();
		return g.toJson(this).toString();
	}


	}