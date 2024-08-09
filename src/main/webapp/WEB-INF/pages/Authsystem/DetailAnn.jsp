<%@page import="Dao.DaoAnnonce"%>
<%@page import="Models.Annonce"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
    <title>Findstate - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="./ressources/css/css_detail/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./ressources/css/css_detail/animate.css">
    
    <link rel="stylesheet" href="./ressources/css/css_detail/owl.carousel.min.css">
    <link rel="stylesheet" href="./ressources/css/css_detail/owl.theme.default.min.css">
    <link rel="stylesheet" href="./ressources/css/css_detail/magnific-popup.css">

    <link rel="stylesheet" href="./ressources/css/css_detail/aos.css">

    <link rel="stylesheet" href="./ressources/css/css_detail/ionicons.min.css">

    <link rel="stylesheet" href="./ressources/css/css_detail/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./ressources/css/css_detail/jquery.timepicker.css">

<!-- CSS only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="./ressources/css/css_detail/flaticon.css">
    <link rel="stylesheet" href="./ressources/css/css_detail/icomoon.css">
    <link rel="stylesheet" href="./ressources/css/css_detail/styl.css">
  </head>
  <body>
  <% 
		
			int id = Integer.parseInt(request.getParameter("id"));
			Annonce ann = DaoAnnonce.getAnnonceById(id);
		%>
    <div class="container-fluid">
    <div class="col-md-12 chemin">
		 <div class="row">
			<div class="col-md-12 line-header"></div>
			<div class="col-md-12 tt-chemin">
				<div class="row">
					<div class="col-md-1 offset-1 bttn-rplay">
						<button class="bi-reply-fill"></button>
					</div>
					<div class="col-md-9 opu">
						<span class="lien-acceder"><a href="http://127.0.0.1:5501/dist/index.html">Profile</a><span class="flech-acceder"><i class="fa-solid fa-angle-right"></i></span></span>
						<span class="lien-acceder"><a href="http://127.0.0.1:5500/Dist/properties-single.html">Détails profile</a></span>
					</div>
				</div>
			</div>
			<div class="col-md-7 offset-1 line-header"></div>
			<div class="col-md-12"></div>
		 </div> 
	</div>

    <section class="ftco-section ftco-property-details">
      <div class="container">
						<div class="row ">
							<div class="col-md-9">
								<div class="property-details">
								<div class="text">
									<h2 class="titre"><%=ann.getTitre() %></h2>
									<h3 class="prix"> <%=ann.getPrix() %> Dh</h3>
									<span class="subheading"><%=ann.getAdress().getVille() %></span>
								</div>
									<div class="imgRounded"></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="property-info">
									<div class="FirstSide"></div>
									<div class="UserImage"></div>
									<p class="UserFullName">Omar Elmaataoui</p>
									<div class="col-md-8 offset-2"> <hr></div>
									<div class="SecondSide">
									<button type="button" class="col-md-11 btn-Sam  mt-3"> <i class="fa-solid fa-phone"></i> Consulter Numéro</button>
									<button type="button" class="col-md-11 btn-Sam "><i class="fa-regular fa-message"></i> Envoyer Message</button>
									<button type="button" class="col-md-11 btn-Sam MettreFavoris"><i class="fa-solid fa-heart"></i>  Mettre annonce en favoris</button>
									</div>
								    <div class="col-md-8 offset-2 "> <hr></div>
									<p class="titre-partager">Partager annonce</p>
									<table class="ml-4" style="font-size: 20px;">
										<tr>
											<td><div class="col-lg-10 offset-2"></div></td>
											<td><div class="col-lg-10 offset-2"></div></td>
											<td> <div class="Partage ml-5" style="background-color: red;"><a href="https://www.pinterest.fr/login/"><i class="fa-brands fa-pinterest-p"></i></a></div></td>
											<td><div class="Partage ml-2" style="background-color: blue;"><a href="https://fr-fr.facebook.com/"><i class="fa-brands fa-facebook-f"></i></a></div></td>
											<td><div class="Partage ml-2" style="background-color: rgb(216, 19, 134);"><a href="https://www.instagram.com/accounts/login/"><i class="fa-brands fa-instagram"></i></a></div></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
      	<div class="row">
      		<div class="col-md-9 pills">
					<button class="Form-control btn-pills active ftr"  onclick="AfficherDetails(this)">Detail</button>
					<button class="Form-control btn-pills ml-2 dsc"  onclick="AfficherDetails(this)">Description</button>

						  <div class="tab-content" id="pills-tabContent">
						    	<div class="row RowSam" >
						    		<div class="col-md-12 mt-3 Features">
						    			<div class="row">
											<div class="col-md-12 dtail-ann check">
												<div class="row">
													<div class="col-md-4 dtail-2"><div class="row"><div class="col-md-4"><i class="fa-solid fa-minimize fafa"></i></div><div class="col-md-4 offset-1">Surface</div></div> </div>
													<div class="col-md-5 offset-1 dtail-2"><span class="dtail-ann-ecrit"><%=ann.getSurface() %></span></div>
												</div>
											</div>
											<div class="col-md-12 dtail-ann check">
												<div class="row">
													<div class="col-md-4"><div class="row"><div class="col-md-4"><i class="fa-solid fa-bed fafa"></i></div><div class="col-md-4 offset-1">Chambre</div></div> </div>
													<div class="col-md-5 offset-1"><span class="dtail-ann-ecrit"><%=ann.getNbrpieces() %></span></div>
												</div>
											</div>
											<div class="col-md-12 dtail-ann check">
												<div class="row">
													<div class="col-md-4"><div class="row"><div class="col-md-4"><i class="fa-solid fa-shower fafa"></i></div><div class="col-md-4 offset-1">bains</div></div> </div>
													<div class="col-md-5 offset-1"><span class="dtail-ann-ecrit"><%=ann.getNbrbains() %></span></div>
												</div>
											</div>
											<div class="col-md-12 dtail-ann check" id="dtail-ann3">
												<div class="row">
													<div class="col-md-4"><div class="row"><div class="col-md-4"><i class="fa-solid fa-hotel fafa"></i></div><div class="col-md-4 offset-1">Type</div></div> </div>
													<div class="col-md-5 offset-1"><span class="dtail-ann-ecrit"><%=ann.getType() %></span></div>
												</div>
											</div>
										</div>
						    		</div>
									
									<div class="ml-4 Description">
											<p><%=ann.getDescription() %></p>
									</div>

						         </div>
						  
						    </div>
		      </div>
				</div>
      </div>
    </section>
  </div>	
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="./ressources/js/js_detail/jquery.min.js"></script>
  <script src="./ressources/js/js_detail/jquery-migrate-3.0.1.min.js"></script>
  <script src="./ressources/js/js_detail/popper.min.js"></script>
  <script src="./ressources/js/js_detail/bootstrap.min.js"></script>
  <script src="./ressources/js/js_detail/jquery.easing.1.3.js"></script>
  <script src="./ressources/js/js_detail/jquery.waypoints.min.js"></script>
  <script src="./ressources/js/js_detail/jquery.stellar.min.js"></script>
  <script src="./ressources/js/js_detail/owl.carousel.min.js"></script>
  <script src="./ressources/js/js_detail/jquery.magnific-popup.min.js"></script>
  <script src="./ressources/js/js_detail/aos.js"></script>
  <script src="./ressources/js/js_detail/jquery.animateNumber.min.js"></script>
  <script src="./ressources/js/js_detail/bootstrap-datepicker.js"></script>
  <script src="./ressources/js/js_detail/jquery.timepicker.min.js"></script>
  <script src="./ressources/js/js_detail/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./ressources/js/js_detail/google-map.js"></script>
  <script src="./ressources/js/js_detail/main.js"></script>
  <script src="./ressources/js/js_detail/Samsar.js"></script>
    
  </body>
</html>