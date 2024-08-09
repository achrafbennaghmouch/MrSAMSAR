package Adress;

import java.util.ArrayList;


public class Province {
private int id;
private String nomProvince;
private ArrayList<Ville>Villes;
public Province() {
	super();
	// TODO Auto-generated constructor stub
}
public Province(int id, String nomProvince, ArrayList<Ville> Villes) {
	super();
	this.id = id;
	this.nomProvince = nomProvince;
	this.Villes = Villes;
}
public Province(String nomProvince, ArrayList<Ville> Villes) {
	super();
	this.nomProvince = nomProvince;
	this.Villes = Villes;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNomProvince() {
	return nomProvince;
}
public void setNomProvince(String nomProvince) {
	this.nomProvince = nomProvince;
}
public ArrayList<Ville> getVilles() {
	return Villes;
}
public void setVilles(ArrayList<Ville> Villes) {
	this.Villes = Villes;
}
@Override
public String toString() {
	return "Province [id=" + id + ", nomProvince=" + nomProvince + ", Villes=" + Villes + "]";
}
public String afficherProvince() {
	return "Province : "+nomProvince;
}
}

