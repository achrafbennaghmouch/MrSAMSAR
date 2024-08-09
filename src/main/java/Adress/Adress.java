package Adress;

import java.util.ArrayList;

import enums.TypeAdress;


public class Adress {
	private int id;
	private String ville;
	private String province ; 
	private String Quartier ; 
	private TypeAdress type;
	public Adress() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Adress(int id, String ville, String province, String Quartier,TypeAdress type) {
		super();
		this.id = id;
		this.ville = ville;
		this.province = province;
		this.Quartier = Quartier;
		this.type = type;
	}
	public Adress(int id, String ville, String province, String quartier) {
		super();
		this.id = id;
		this.ville = ville;
		this.province = province;
		Quartier = quartier;
	}
	public Adress(String ville, String province, String Quartier, TypeAdress type) {
		super();
		this.ville = ville;
		this.province = province;
		this.Quartier = Quartier;
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getQuartier() {
		return Quartier;
	}
	public void setQuartier(String quartier) {
		Quartier = quartier;
	}
	public TypeAdress getType() {
		return type;
	}
	public void setType(TypeAdress type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "province:" + province + ", ville:" + ville + ",  Quartier:" + Quartier +  "";
	}
	
}