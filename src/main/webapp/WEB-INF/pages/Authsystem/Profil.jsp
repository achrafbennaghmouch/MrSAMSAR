<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Profile</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel='stylesheet' href='https://use.fp-linkontawesome.com/releases/v5.3.1/css/brands.css'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<!-- Favicon  -->
<link rel="icon" href="./ressources/img/core-img/favicon.ico">
<!-- Style CSS -->
<link rel="stylesheet" href="./ressources/css/linearicons.css">
<link rel="stylesheet" href="./ressources/css/font-awesome.min.css">
<link rel="stylesheet" href="./ressources/css/nice-select.css">
<link rel="stylesheet" href="./ressources/css/ion.rangeSlider.css" />
<link rel="stylesheet" href="./ressources/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet" href="./ressources/css/bootstrap.css">
<link rel="stylesheet" href="./ressources/bootstrap-icons-1.8.1/bootstrap-icons.css">
<link rel="stylesheet" href="./ressources/css/owl.carousel.css">

<link rel="stylesheet" href="./ressources/css/STYLEP.css">
<link rel="stylesheet" href="./ressources/css/Profil/style-annonce.css">
<link rel="stylesheet" href="./ressources/css/Profil/Profill.css">
<link rel="stylesheet" href="./ressources/css/Profil/Modification.css">
<link rel="stylesheet" href="./ressources/css/Profil/InfoProfil.css">
<!---<link rel="stylesheet" href="css/main.css">-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<script type="text/javascript" src="./ressources/js/jquery.js"></script>
</head>
<body>
<main>

<!-----------------------------------HEADER----------------------------------------------------------------------------------->
	<jsp:include page="../../shared/Headers/HeaderAfterAuth.jsp" />
	
<!---------------------photo_de_Profile photo_de_couvertir Avec_son_nom/prenom------------------------------------------------>
	<jsp:include page="../../components/authsystem/Profil/ProfilComponent.jsp" />
	
	<div id="main-content">
	    <div class="tb">
	      <div class="row">
	      <jsp:include page="../../components/authsystem/Profil/LeftSideBarComponent.jsp" />
<!-- -----------------------------------CONTENT--------------------------------------------------------------------------------->   
	      <jsp:include page="../../components/authsystem/Profil/ContentProfilComponent.jsp" />
	      
	      
	     
	     
	
	  </div>
	</div>
	  </div>
       <jsp:include page="../../shared/Footers/FooterAfterAuth.jsp" />
</main>
<script src="./ressources/js/Sharedjs/jquery/jquery-2.2.4.min.js"></script>
<script  src="./ressources/js/ProfilAnnnonce.js"></script>
<script  src="./ressources/js/script.js"></script>

  <!-- Popper js -->
  <script src="./ressources/js/Sharedjs/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="./ressources/js/Sharedjs/bootstrap.min.js"></script>
  <!-- Plugins js -->
  <script src="./ressources/js/Sharedjs/plugins.js"></script>
  <script src="./ressources/js/Sharedjs/classy-nav.min.js"></script>
  <script src="./ressources/js/Sharedjs/jquery-ui.min.js"></script>
  <!-- Active js -->
  <script src="./ressources/js/Sharedjs/active.js"></script>
  <!------Traitenment de profile----->
	   <script src="./ressources/js/JSprofil/ChoixInfos.js"></script>
	   <script src="./ressources/js/JSprofil/ModificationAnn.js"></script> 
	   <script src="./ressources/js/JSprofil/UpdateInfoProfil2.js"></script> 
	   <script src="./ressources/js/JSprofil/DesignAnn2.js"></script>
	   <!--  <script type="./ressources/js/designAnnonce.js"></script>--> 
	   <script type="text/javascript">
	  function Annoncehover(x){
	      x.children[0].style.display="block";
	      x.children[1].style.filter="blur(2px)";
	      x.children[2].style.display="block";
	      x.children[3].style.display="block";
	  }
	  function AnnonceDehover(x){
	      x.children[0].style.display="none";
	      x.children[1].style.filter="none";
	      x.children[2].style.display="none";
	      x.children[3].style.display="none";
	   
	  }
	  var nbr=0;
	  function DoFav(x){
	      if(nbr==0){
	         x.children[0].style.display="none"
	         x.children[1].style.display="block"
	         nbr=1
	      }else{
	          x.children[1].style.display="none"
	          x.children[0].style.display="block"
	          nbr=0
	      }
	  }
	  
	  
	  </script> 
	
	

</body>
</html>