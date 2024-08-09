function ajouter(){
	var titre= document.getElementById("titre").value;
	var desc = document.getElementById("descr").value
	var prix= document.getElementById("prix").value;
	var nbrbains=document.getElementById("nbrbain").value;
	var nbrpieces=document.getElementById("nbrpiece").value;
	var surface=document.getElementById("surface").value;
	var selecType = document.getElementById("SelectType").selectedIndex;
	var selectProv = document.getElementById("SelectProvince").selectedIndex;
	var selectVill = document.getElementById("SelectVille").selectedIndex;
	var selectQuart = document.getElementById("SelectQuartier").selectedIndex;
	var selectRuee = document.getElementById("SelectRue").selectedIndex;
    var province=document.getElementsByTagName("option")[selectProv].textContent;
    var ville=document.getElementsByTagName("option")[selectVill].textContent;
    var quartier=document.getElementsByTagName("option")[selectQuart].textContent;
    var rue=document.getElementsByTagName("option")[selectRuee].textContent;
    var typeAnn=document.getElementsByTagName("option")[selecType].textContent;
	var id = window.location.href.split("=")[1]
	console.log(typeAnn)
	if(confirm("voulez-vous ajouter cette annonce")){
	$.post("ajouter",
	    {"id":id,"op":"ajouter","nbrbains":nbrbains,"nbrpieces":nbrpieces,"surface":surface,"description":desc,"TypeAnn":typeAnn,"province":province,"ville":ville,
		"quartier":quartier,"rue":rue,"titre":titre,"prix":prix},function(data){
		console.log(data)
		
			//window.location.href="http://localhost:8080/Mrsamsar/profil"
		
	});}
	
}/**
 * 
 */