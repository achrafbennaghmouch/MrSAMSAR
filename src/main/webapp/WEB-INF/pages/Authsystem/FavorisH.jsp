
<%@page import="Models.Annonce"%>
<%@page import="Dao.DaoAnnonce"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="icon" href="./ressources/imagesH/HomeImg/core-img/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

<link rel="stylesheet" href="./ressources/cssH/stylehm.css">
<link rel="stylesheet" href="./ressources/cssH/linearicons.css">
<link rel="stylesheet" href="./ressources/cssH/font-awesome.min.css">
<link rel="stylesheet" href="./ressources/cssH/nice-select.css">
<link rel="stylesheet" href="./ressources/cssH/ion.rangeSlider.css">
<link rel="stylesheet" href="./ressources/cssH/ion.rangeSlider.skinFlat.css">
<link rel="stylesheet" href="./ressources/cssH/Profil/style-annonce.css">

<link rel="stylesheet" href="./ressources/cssH/bootstrap.css">
<link rel="stylesheet" href="./ressources/cssH/owl.carousel.css">
<link rel="stylesheet" href="./ressources/cssH/main.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
<!-- ##### Header Area Start ##### -->
   <header class="header-area">

        <!-- -----------------------------------------Top Header Area--------------------------------- -->
      
        <div class="menutop-wrap">
			<div class="col-lg-12 menu-top "><div class="row">
                <div class="col-lg-9 ">
                    <div class="phone-number d-flex">
                            <div class="icon">
                                <i class="bi bi-telephone-plus-fill"></i>
                            </div>
                            <div class="number">
                               <span> <a href="tel:+212 051427865">+212 051427865</a></span>
                            </div>
                    </div>
                </div>

                    <div class="col-lg-2 offset-lg-1 "><div class="row">
                        <div class="col-lg-9 header-seconnecter">
                            <span><a href="http://localhost:8080/Mrsamsar/login"><i class="bi bi-person-plus"></i> &nbsp; Se Connecter</a></span>
                         </div></div>
                    </div>

             
            </div>
			</div>
		</div>
        <!-- Main Header Area -->
        <div id="stickyHeader-sticky-wrapper" class="sticky-wrapper is-sticky" style="height: 90px;"><div class="main-header-area" id="stickyHeader" style="width: 1519px; position: fixed; top: 0px; z-index: inherit;">
            <div class="classy-nav-container breakpoint-off dark left">
                <!-- Classy Menu -->
                <nav class="classy-navbar justify-content-between" id="southNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="http://localhost:8080/MRSAMSARV2/Home"><img src="./ressources/imagesH/HomeImg/core-img/logo.png" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- close btn -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul>
                                <li><a href="http://localhost:8080/MRSAMSARV2/Home">Home</a></li>
                                <li><a href="#">Acheter</a> </li>
                                <li><a href="#">Louer</a> </li>
                                                                  
                                <li><a href="http://localhost:8080/MRSAMSARV2/aboutus">About Us</a></li>
                                <li><a href="listings.html">Immoneuf</a></li>
                                
                               
                                <li><a href="http://localhost:8080/MRSAMSARV2/contact">Contact</a></li>
                            </ul>

                            <!-- Search Form -->
                            <div class="south-search-form">
                                <form action="#" method="post">
                                    <input type="search" name="search" id="search" placeholder="Search Anything ...">
                                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>

                            <!-- Search Button -->
                            <a href="#" class="searchbtn"><i class="fa fa-search" aria-hidden="true"></i></a>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div></div>
    </header>
    <section class="hero-area">
    <div class="hero-slides owl-carousel">
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img" style="background-image: url(./ressources/imagesH/HomeImg/bg-img/hero1.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="hero-slides-content">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img" style="background-image: url(./ressources/imagesH/HomeImg/bg-img/hero2.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="hero-slides-content">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img" style="background-image: url(./ressources/imagesH/HomeImg/bg-img/hero3.jpg);">
            <div class="container h-100 ">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="hero-slides-content">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
   
     
   
   
   
   
   
   

    <div class="south-search-area">
        <div class="container glbl-search">
          
            <div class="row">
                <div class="col-12">
                    <div class="advanced-search-form">
                        <!-- Search Title -->
                        <!-- Search Form -->
                        <form action="#" method="post" id="advanceSearch">

                            <div class="row">
                                <div class="col-lg-6 col-md-4 col-lg-3 chercherAnn">
                                        <div class="form-group has-search">
                                            <span class="fa fa-search form-control-feedback"></span>
                                            <input type="text" class="form-control" placeholder="City,community or building">
                                        </div>
                                </div>

                                <div class="col-12  col-md-4 col-lg-3">
                                    <div class="form-group">
                                        <select class="form-control" id="catagories">
                                            <option>Type de propriété </option>
                                            <option>Appartement</option>
                                            <option>Villa</option>
                                            <option>Maison</option>
                                            <option>Duplex</option>
                                            <option>Immeuble</option>
                                            <option>Terrain</option>
                                            <option>Bungalow</option>
                                            <option>Chalet</option>
                                            <option>Usine</option>
                                            <option>Riad</option>
                                            <option>Triplex</option>
                                            <option>Studio</option>
                                            <option>Penthouse</option>
                                            <option>Hangar</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-4 col-lg-2">
                                    <div class="form-group">
                                        <select class="form-control" id="bedrooms">
                                            <option>Chambres</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5+</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-4 col-lg-2">
                                    <div class="form-group">
                                        <select class="form-control" id="bathrooms">
                                            <option>Salles de Bains</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5+</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-12 col-md-8 col-lg-12 col-xl-5 d-flex slideRange">
                                    <!-- Space Range -->
                                    <div class="slider-range" >
                                        <div data-min="60" data-max="500" data-unit=" sq. ft" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="60" data-value-max="500">
                                            <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        </div>
                                        <div class="range">60 sq. ft - 500 sq. ft</div>
                                    </div>

                                    <!-- Distance Range -->
                                    <div class="slider-range">
                                        <div data-min="250000" data-max="5000000" data-unit=" Dh" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="250000" data-value-max="5000000">
                                            <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        </div>
                                        <div class="range">250000 Dh - 5000000 Dh</div>
                                    </div>
                                </div>

                                <div class="col-12 search-form-second-steps">
                                    <div class="row">


                                        <div class="col-lg-6 col-md-4 col-lg-3 chercherAnn">
                                            <div class="form-group has-search">
                                                <span class="fa fa-search form-control-feedback"></span>
                                                <input type="text" class="form-control" placeholder="Mot cle,..">
                                            </div>
                                    </div>

                                        <div class="col-12 col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" id="city5">
                                                    <option>All City</option>
                                                    <option>City 1</option>
                                                    <option>City 2</option>
                                                    <option>City 3</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 d-flex justify-content-between align-items-end">
                                    <!-- More Filter -->
                                    <div class="more-filter">
                                        <a href="#" id="moreFilter">+ More filters</a>
                                    </div>
                                    <!-- Submit -->
                                    <div class="form-group mb-0">
                                        <button type="submit" class="btn south-btn">Chercher</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

  <section class="featured-properties-area section-padding-00-70">
        <div class="container ">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading wow fadeInUp">
                        <h2>Featured Properties</h2>
                        <p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
                    </div>
                </div>
            </div>

            <div class="row">
         <%          
            	 DaoAnnonce dp = new DaoAnnonce();
            ArrayList<Annonce> Annonce =dp.getAlllists();
            %>
        <%for(int i=0;i<Annonce.size();i++){%>
                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                          <a href="http://localhost:8080/MRSAMSARV2/detail">  <img src="./ressources/imagesH/HomeImg/bg-img/<%= Annonce.get(i).getImage() %>" alt=""></a>

                            <div class="tag">
                                <span><%= Annonce.get(i).getType() %></span>
                            </div>
                            <div class="list-price">
                                <p><%= Annonce.get(i).getPrix() %> Dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5><%= Annonce.get(i).getTitre() %></h5>
                            <div class="Favoris" onclick="DoFav(this)">
                            
                               <i class="fa-regular fa-heart BeforeFav"></i>
                               <i class="fa-solid fa-heart AfterFav"></i>
                                 <input type="hidden" value="<%= Annonce.get(i).getId() %>">
                            </div>
                            <p class="location"><img src="./ressources/imagesH/HomeImg/icons/location.png" alt=""><%= Annonce.get(i).getAdress().getVille()%></p>
                            <p><%= Annonce.get(i).getDescription() %></p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/imagesH/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/imagesH/HomeImg/icons/bathtub.png" alt="">
                                    <span><%= Annonce.get(i).getNbrbains() %></span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/imagesH/HomeImg/icons/chambre.png" alt="">
                                    <span><%= Annonce.get(i).getNbrpieces() %></span>
                                </div>
                                <div class="space">
                                    <img src="img/icons/space.png" alt="">
                                    <span><%= Annonce.get(i).getSurface() %>m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

               <% } %>
                

               
             
            </div>
        </div>
    </section>

      <!-- ##### Call To Action Area Start ##### -->
      <section class="call-to-action-area bg-fixed bg-overlay-black" style="background-image: url(./ressources/imagesH/HomeImg/bg-img/cta.jpg)">
        <div class="container h-100">
            <div class="row align-items-center h-100">
                <div class="col-12">
                    <div class="cta-content text-center">
                        <h2 class="wow fadeInUp" data-wow-delay="300ms">Are you looking for a place to rent?</h2>
                        <h6 class="wow fadeInUp" data-wow-delay="400ms">Suspendisse dictum enim sit amet libero malesuada feugiat.</h6>
                        <a href="#" class="btn south-btn mt-50 wow fadeInUp" data-wow-delay="500ms">Search</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
  
     <section class="south-testimonials-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading wow fadeInUp" data-wow-delay="250ms">
                        <h2>Avis Clients</h2>
                        <p>Quelques avis de nos chers clients .</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="testimonials-slides owl-carousel wow fadeInUp" data-wow-delay="500ms">

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide text-center">
                            <h5>Perfect Home for me</h5>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                            <div class="testimonial-author-info">
                                <img src="./ressources/imagesH/HomeImg/bg-img/feature6.jpg" alt="">
                                <p>Daiane Smith, <span>Customer</span></p>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide text-center">
                            <h5>Perfect Home for me</h5>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                            <div class="testimonial-author-info">
                                <img src="./ressources/imagesH/HomeImg/bg-img/feature6.jpg" alt="">
                                <p>Daiane Smith, <span>Customer</span></p>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide text-center">
                            <h5>Perfect Home for me</h5>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                            <div class="testimonial-author-info">
                                <img src="./ressources/imagesH/HomeImg/bg-img/feature6.jpg" alt="">
                                <p>Daiane Smith, <span>Customer</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
    <!--------------------------------------FOOTER--------------------------------------->
    <footer class="footer-area section-padding-100-0 bg-img gradient-background-overlay" style="background-image: url(./ressources/imagesH/HomeImg/bg-img/cta.jpg);">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area mb-100">
                            <!-- Widget Title -->
                            <div class="widget-title">
                                <h6>About Us</h6>
                            </div>

                            <img src="./ressources/imagesH/HomeImg/bg-img/footer.jpg" alt="">
                            <div class="footer-logo my-4">
                                <img src="./ressources/imagesH/HomeImg/core-img/logo.png" alt="">
                            </div>
                            <p>Bonjour et bienvenue sur Mr.samsar, le site où trouver les meilleurs immobilier pour achat ou location .</p>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area mb-100">
                            <!-- Widget Title -->
                            <div class="widget-title">
                                <h6>Hours</h6>
                            </div>
                            <!-- Office Hours -->
                            <div class="weekly-office-hours">
                                <ul>
                                    <li class="d-flex align-items-center justify-content-between"><span>Monday - Friday</span> <span>09 AM - 19 PM</span></li>
                                    <li class="d-flex align-items-center justify-content-between"><span>Saturday</span> <span>09 AM - 14 PM</span></li>
                                    <li class="d-flex align-items-center justify-content-between"><span>Sunday</span> <span>Closed</span></li>
                                </ul>
                            </div>
                            <!-- Address -->
                            <div class="address">
                                <h6><img src="./ressources/imagesH/HomeImg/icons/phone-call.png" alt=""> +212 0514785896</h6>
                                <h6><img src="./ressources/imagesH/HomeImg/icons/envelope.png" alt=""> MrSamsar@gmail.com</h6>
                                <h6><img src="./ressources/imagesH/HomeImg/icons/location.png" alt=""> Marina Casablanca Bd des Almohades ·</h6>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area mb-100">
                            <!-- Widget Title -->
                            <div class="widget-title">
                                <h6>Useful Links</h6>
                            </div>
                            <!-- Nav -->
                            <ul class="useful-links-nav d-flex align-items-center">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About us</a></li>
                                
                                <li><a href="#">Services</a></li>
                               
                                <li><a href="#">Blog</a></li>
                                
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area mb-100">
                            <!-- Widget Title -->
                            <div class="widget-title">
                                <h6>Featured Properties</h6>
                            </div>
                            <!-- Featured Properties Slides -->
                            <div class="featured-properties-slides owl-carousel">
                                <!-- Single Slide -->
                                <div class="single-featured-properties-slide">
                                    <a href="#"><img src="./ressources/imagesH/HomeImg/bg-img/fea-product.jpg" alt=""></a>
                                </div>
                                <!-- Single Slide -->
                                <div class="single-featured-properties-slide">
                                    <a href="#"><img src="./ressources/imagesH/HomeImg/bg-img/fea-product.jpg" alt=""></a>
                                </div>
                                <!-- Single Slide -->
                                <div class="single-featured-properties-slide">
                                    <a href="#"><img src="./ressources/imagesH/HomeImg/bg-img/fea-product.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

      
    </footer>

 
</body>
<script  src="./ressources/jsH/HomeJs/jquery/jquery-2.2.4.min.js"></script>
<script  src="./ressources/jsH/HomeJs/popper.min.js"></script>
<script  src="./ressources/jsH/HomeJs/bootstrap.min.js"></script>
<script  src="./ressources/jsH/HomeJs/plugins.js"></script>
<script  src="./ressources/jsH/HomeJs/classy-nav.min.js"></script>
<script  src="./ressources/jsH/HomeJs/jquery-ui.min.js"></script>
<script  src="./ressources/jsH/HomeJs/active.js"></script>
<script  src="./ressources/jsH/AjouterFav.js"></script>
	
</html>