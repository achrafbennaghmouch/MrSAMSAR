function modifier(){
	var nom = document.getElementById("name").value
	var id = window.location.href.split("=")[1]
	var description = document.getElementById("description").value
	if(confirm("voulez-vous modifier cette tache")){
	$.post("modifier",{"id":id,"name":nom,"description":description,"op":"Edit"},function(data){
		if(data == "true"){
			window.location.href="http://localhost:8080/MRSAMSARV2/categorie"
		}
	});
	}
}