package Models;

import java.util.Date;

public class Categorie {
   private int id,nombre;
	private String nom,description;
	private Date datecreation;
	public Categorie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Categorie(int id, String nom, int nombre, Date datecreation, String description) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.nom = nom;
		this.description = description;
		this.datecreation = datecreation;
	}
	public Categorie( String nom,int nombre , Date datecreation, String description) {
		super();
		this.nom = nom;
		this.description = description;
		this.datecreation = datecreation;
		this.nombre = nombre;
	}
	
	
	public Categorie(int id, String nom, String description) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
	}
	public Categorie(String nom, String description) {
		super();
		this.nom = nom;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNombre() {
		return nombre;
	}
	public void setNombre(int nombre) {
		this.nombre = nombre;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDatecreation() {
		return datecreation;
	}
	public void setDatecreation(Date datecreation) {
		this.datecreation = datecreation;
	}
	@Override
	public String toString() {
		return "Categorie [id=" + id + ", nombre=" + nombre + ", nom=" + nom + ", description=" + description
				+ ", datecreation=" + datecreation + "]";
	}
	
}
