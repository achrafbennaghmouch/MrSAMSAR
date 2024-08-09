package Models;


import com.google.gson.Gson;

import Adress.Adress;
import enums.TypeRole;

public class User {
	private int id;
	private String nom;
	private String prenom;
	private String datenaissance;
	private TypeRole role;
	private Compte c;
	private Adress adress;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String nom, String prenom, String datenaissance, TypeRole role, Compte c, Adress adress) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.role = role;
		this.c = c;
		this.adress = adress;
	}
	public User(String nom, String prenom, String datenaissance, TypeRole role, Compte c, Adress adress) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.role = role;
		this.c = c;
		this.adress = adress;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getDatenaissance() {
		return datenaissance;
	}
	public void setDatenaissance(String datenaissance) {
		this.datenaissance = datenaissance;
	}
	public TypeRole getRole() {
		return role;
	}
	public void setRole(TypeRole role) {
		this.role = role;
	}
	public Compte getC() {
		return c;
	}
	public void setC(Compte c) {
		this.c = c;
	}
	public Adress getAdress() {
		return adress;
	}
	public void setAdress(Adress adress) {
		this.adress = adress;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", datenaissance=" + datenaissance + ", role="
				+ role + ", c=" + c + ", adress=" + adress + "]";
	}
	public String getJsonFormat() {
		Gson g = new Gson();
		return g.toJson(this).toString();
	}
	}