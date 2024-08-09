package Adress;

import java.util.ArrayList;


public class Ville {
	   private int id;
	   private String nomVille;
	   private ArrayList<Quartier>Quartiers;
	public Ville() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ville(int id, String nomVille, ArrayList<Quartier> Quartiers) {
		super();
		this.id = id;
		this.nomVille = nomVille;
		this.Quartiers = Quartiers;
	}
	public Ville(String nomVille, ArrayList<Quartier> Quartiers) {
		super();
		this.nomVille = nomVille;
		this.Quartiers = Quartiers;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomVille() {
		return nomVille;
	}
	public void setNomVille(String nomVille) {
		this.nomVille = nomVille;
	}
	public ArrayList<Quartier> getQuartiers() {
		return Quartiers;
	}
	public void setProvinces(ArrayList<Quartier> provinces) {
		this.Quartiers = Quartiers;
	}
	@Override
	public String toString() {
		return "Ville [id=" + id + ", nomVille=" + nomVille + ", Quartiers=" + Quartiers + "]";
	}
	public String afficherVille() {
		return "Ville : "+nomVille;
	}
	  
	   
	}
