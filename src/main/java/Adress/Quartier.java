package Adress;

public class Quartier {
	  private int id;
	  private String nomQuartier;
	  private int rue;
	  private int numero;
	  private int etage;
	public Quartier() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Quartier(int id, String nomQuartier, int rue, int numero, int etage) {
		super();
		this.id = id;
		this.nomQuartier = nomQuartier;
		this.rue = rue;
		this.numero = numero;
		this.etage = etage;
	}
	public Quartier(String nomQuartier, int rue, int numero, int etage) {
		super();
		this.nomQuartier = nomQuartier;
		this.rue = rue;
		this.numero = numero;
		this.etage = etage;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomQuartier() {
		return nomQuartier;
	}
	public void setNomQuartier(String nomQuartier) {
		this.nomQuartier = nomQuartier;
	}
	public int getRue() {
		return rue;
	}
	public void setRue(int rue) {
		this.rue = rue;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public int getEtage() {
		return etage;
	}
	public void setEtage(int etage) {
		this.etage = etage;
	}
	@Override
	public String toString() {
		return "Quartier [id=" + id + ", nomQuartier=" + nomQuartier + ", rue=" + rue + ", numero=" + numero + ", etage="
				+ etage + "]";
	}
	  
	}

