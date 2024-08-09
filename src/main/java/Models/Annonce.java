package Models;


import com.google.gson.Gson;

import Adress.Adress;
import enums.TypeAnnonce;

public class Annonce {
	private int id;
	private String titre;
	private float prix;
	private String description;
	private String datecreation;
	private int nbrpieces,nbrbains;
	private String image;
	private int surface;
	private TypeAnnonce type;
	private Adress adress;
	public Annonce() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Annonce(int id, String titre, float prix, String description, String datecreation, int nbrpieces,
			int nbrbains, String image, int surface, TypeAnnonce type, Adress adress) {
		super();
		this.id = id;
		this.titre = titre;
		this.prix = prix;
		this.description = description;
		this.datecreation = datecreation;
		this.nbrpieces = nbrpieces;
		this.nbrbains = nbrbains;
		this.image = image;
		this.surface = surface;
		this.type = type;
		this.adress = adress;
	}
	public Annonce(String titre, float prix, String description, String datecreation, int nbrpieces, int nbrbains,
			String image, int surface, TypeAnnonce type, Adress adress) {
		super();
		this.titre = titre;
		this.prix = prix;
		this.description = description;
		this.datecreation = datecreation;
		this.nbrpieces = nbrpieces;
		this.nbrbains = nbrbains;
		this.image = image;
		this.surface = surface;
		this.type = type;
		this.adress = adress;
	}
	
	public Annonce(int id,String titre, float prix, String description, int nbrpieces, int nbrbains, String image, int surface,TypeAnnonce type,
			Adress adress) {
		super();
		this.id=id;
		this.titre = titre;
		this.prix = prix;
		this.description = description;
		this.nbrpieces = nbrpieces;
		this.nbrbains = nbrbains;
		this.image = image;
		this.surface = surface;
		this.type = type;
		this.adress = adress;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public float getPrix() {
		return prix;
	}
	public void setPrix(float prix) {
		this.prix = prix;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDatecreation() {
		return datecreation;
	}
	public void setDatecreation(String datecreation) {
		this.datecreation = datecreation;
	}
	public int getNbrpieces() {
		return nbrpieces;
	}
	public void setNbrpieces(int nbrpieces) {
		this.nbrpieces = nbrpieces;
	}
	public int getNbrbains() {
		return nbrbains;
	}
	public void setNbrbains(int nbrbains) {
		this.nbrbains = nbrbains;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSurface() {
		return surface;
	}
	public void setSurface(int surface) {
		this.surface = surface;
	}
	public TypeAnnonce getType() {
		return type;
	}
	public void setType(TypeAnnonce type) {
		this.type = type;
	}
	public Adress getAdress() {
		return adress;
	}
	public void setAdress(Adress adress) {
		this.adress = adress;
	}
	@Override
	public String toString() {
		return "Annonce [id=" + id + ", titre=" + titre + ", prix=" + prix + ", description=" + description
				+ ", datecreation=" + datecreation + ", nbrpieces=" + nbrpieces + ", nbrbains=" + nbrbains + ", image="
				+ image + ", surface=" + surface + ", type=" + type + ", adress=" + adress + "]";
	}
	public String getJsonFormat() {
		Gson g = new Gson();
		return g.toJson(this).toString();
	}
	

}