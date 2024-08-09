$(document).ready(function () {
    $('#example').DataTable();
});
function supprimer(x){
    var y=x.parentElement.parentElement.parentElement.children[0].textContent;
  $.post("http://localhost:8080/MRSAMSARV2/categorie",{"id":y,"op":"Delete"},(data)=>{
x.parentElement.parentElement.parentElement.remove();
  });
};
function modifier(){
	var nom = document.getElementById("nom").value
	var id = window.location.href.split("=")[1]
	var desc = document.getElementById("description").value
	if(confirm("voulez-vous modifier cette tache")){
	$.post("modifier",{"id":id,"name":nom,"description":desc,"op":"Edit"},function(data){
		if(data == "true"){
			window.location.href="http://localhost:8080/MRSAMSARV2/categorie"
		}
	});}
	
}