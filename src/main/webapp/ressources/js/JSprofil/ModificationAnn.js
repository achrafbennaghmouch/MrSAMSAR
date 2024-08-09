/*------------------Moddification Info Profil-----------------*/
function InfoProfil(){
	
	var nom = document.getElementById("nom-user").value;
	var prenom = document.getElementById("prenom-user").value;
	var numtel_user = document.getElementById("numtel-user").value;
	var datenaissance_user = document.getElementById("datenaissance-user").value;
	
	var selProvince = document.getElementById("province-user").selectedIndex;
	var province_user=document.getElementsByTagName("option")[selProvince].textContent;
	
	var selVille = document.getElementById("ville-user").selectedIndex;
	var ville_user=document.getElementsByTagName("option")[selVille].textContent;
	
	var selQuartier = document.getElementById("quartier-user").selectedIndex;
	var quartier_user=document.getElementsByTagName("option")[selQuartier].textContent;
	
	console.log(nom,prenom,numtel_user,datenaissance_user)
	console.log(province_user);
	console.log(ville_user);
	
  if(confirm("voulez-vous modifier cette tache")){
	$.post("modifierInfoProfil",{op:"UpdateInfo","nom_user":nom,
	   "prenom_user":prenom,"numtel_user":numtel_user,"dateN_user":datenaissance_user,
        "ville_user":ville_user,"quartier_user":quartier_user,"province_user":province_user},function(data){
	if(data=="true"){
		window.location= "http://localhost:8080/Mrsamsar/profil";
	}else{
		alert("votre modification est invalide")
	}
		
	});}
}
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
/*------------------Suppression d'annonce------------------*/
function  deleteAnn(y){
	
          var x = y.parentElement.children[2].value;

   if(confirm("Vous voulez vraiment supprimer!!!")){
	     $.post("http://localhost:8080/Mrsamsar/modifier",{id:x,op:"delete"},function(data){
		    if(data=="true"){
			alert("Bien Supprimer");
		   }else if(data=="false"){
			alert("Error de suppression");
		    }

        });
    y.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.remove();
}
    }
/*------------------Modification d'annonce------------------*/
function modifier(){
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
    var province=document.getElementsByTagName("option")[selectProv].textContent;
    var ville=document.getElementsByTagName("option")[selectVill].textContent;
    var quartier=document.getElementsByTagName("option")[selectQuart].textContent;
    var typeAnn=document.getElementsByTagName("option")[selecType].textContent;
	var id = window.location.href.split("=")[1]
	console.log(titre)
	if(confirm("voulez-vous modifier cette tache")){
	$.post("modifier",
	    {"id":id,"op":"modifier","nbrbains":nbrbains,"nbrpieces":nbrpieces,"surface":surface,"description":desc,"TypeAnn":typeAnn,"province":province,"ville":ville,
		"quartier":quartier,"titre":titre,"prix":prix},function(data){
		console.log(titre)
		
			//window.location.href="http://localhost:8080/Mrsamsar/profil"
		
	});}
	
}






