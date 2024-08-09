<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="icon" href="./ressources/images/HomeImg/core-img/favicon.ico">

<link rel="stylesheet" href="./ressources/css/styleH.css">
<link rel="stylesheet" href="./ressources/css/linearicons.css">
<link rel="stylesheet" href="./ressources/css/font-awesome.min.css">
<link rel="stylesheet" href="./ressources/css/nice-select.css">
<link rel="stylesheet" href="./ressources/css/ion.rangeSlider.css">
<link rel="stylesheet" href="./ressources/css/ion.rangeSlider.skinFlat.css">
<link rel="stylesheet" href="./ressources/css/bootstrap.css">
<link rel="stylesheet" href="./ressources/css/owl.carousel.css">
<link rel="stylesheet" href="./ressources/css/main.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
<section class="hero-area">
    <div class="hero-slides owl-carousel">
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img" style="background-image: url(./ressources/images/HomeImg/bg-img/hero1.jpg);">
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
        <div class="single-hero-slide bg-img" style="background-image: url(./ressources/images/HomeImg/bg-img/hero2.jpg);">
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
        <div class="single-hero-slide bg-img" style="background-image: url(./ressources/images/HomeImg/bg-img/hero3.jpg);">
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

                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            <img src="./ressources/images/HomeImg/bg-img/feature1.jpg" alt="">

                            <div class="tag">
                                <span>A VENDRE</span>
                            </div>
                            <div class="list-price">
                                <p>945 679 dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>Villa in Californie</h5>
                            <p class="location"><img src="./ressources/images/HomeImg/icons/location.png" alt="">Jnane Californie</p>
                            <p>Magnifique villa à vendre à Plage des nations</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/images/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/images/HomeImg/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/images/HomeImg/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="img/icons/space.png" alt="">
                                    <span>120 m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp"  data-wow-delay="200ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            <img src="./ressources/images/HomeImg/bg-img/feature2.jpg" alt="">

                            <div class="tag">
                                <span>A vendre</span>
                            </div>
                            <div class="list-price">
                                <p>945 679 dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>Maison  dans un village haymoud</h5>
                            <p class="location"><img src="./ressources/images/HomeImg/icons/location.png" alt="">1645 bd Mohamed,Casablanca</p>
                            <p>Maison 120m2 3 faces à vendre à hay elwarda.</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/images/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/images/HomeImg/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/images/HomeImg/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/images/HomeImg/icons/space.png" alt="">
                                    <span>120 m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            <img src="./ressources/images/HomeImg/bg-img/feature3.jpg" alt="">

                            <div class="tag">
                                <span>a vendre</span>
                            </div>
                            <div class="list-price">
                                <p>945 679 dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>Complexe in Tanger</h5>
                            <p class="location"><img src="./ressources/images/HomeImg/icons/location.png" alt="">Upper Road 3411, no.34 CA</p>
                            <p>Integer nec bibendum lacus. Suspendisse dictum enim sit amet libero malesuada.</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/images/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/images/HomeImg/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/images/HomeImg/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/images/HomeImg/icons/space.png" alt="">
                                    <span>120 m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="400ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            <img src="./ressources/images/HomeImg/bg-img/feature4.jpg" alt="">

                            <div class="tag">
                                <span>a vendre</span>
                            </div>
                            <div class="list-price">
                                <p>945 679 dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>Villa in Rabat</h5>
                            <p class="location"><img src="./ressources/images/HomeImg/icons/location.png" alt="">Upper Road 3411, no.34 CA</p>
                            <p>Integer nec bibendum lacus. Suspendisse dictum enim sit amet libero malesuada.</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/images/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/images/HomeImg/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/images/HomeImg/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/images/HomeImg/icons/space.png" alt="">
                                    <span>120 m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="500ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            <img src="./ressources/images/HomeImg/bg-img/feature5.jpg" alt="">

                            <div class="tag">
                                <span>A vendre</span>
                            </div>
                            <div class="list-price">
                                <p>945 679 dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>Town House in Los Angeles</h5>
                            <p class="location"><img src="./ressources/images/HomeImg/icons/location.png" alt="">Upper Road 3411, no.34 CA</p>
                            <p>Integer nec bibendum lacus. Suspendisse dictum enim sit amet libero malesuada.</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/images/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/images/HomeImg/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/images/HomeImg/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/images/HomeImg/icons/space.png" alt="">
                                    <span>120 m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Featured Property -->
                <div class="col-12 col-md-6 col-xl-4">
                    <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="600ms">
                        <!-- Property Thumbnail -->
                        <div class="property-thumb">
                            <img src="./ressources/images/HomeImg/bg-img/feature6.jpg" alt="">

                            <div class="tag">
                                <span>a vendre</span>
                            </div>
                            <div class="list-price">
                                <p>945 679 dh</p>
                            </div>
                        </div>
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>Town House in Los Angeles</h5>
                            <p class="location"><img src="./ressources/images/HomeImg/icons/location.png" alt="">Upper Road 3411, no.34 CA</p>
                            <p>Integer nec bibendum lacus. Suspendisse dictum enim sit amet libero malesuada.</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/images/HomeImg/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/images/HomeImg/icons/bathtub.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/images/HomeImg/icons/garage.png" alt="">
                                    <span>2</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/images/HomeImg/icons/space.png" alt="">
                                    <span>120 m<sup>2</sup> </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

      <!-- ##### Call To Action Area Start ##### -->
      <section class="call-to-action-area bg-fixed bg-overlay-black" style="background-image: url(./ressources/images/HomeImg/bg-img/cta.jpg)">
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
                                <img src="./ressources/images/HomeImg/bg-img/feature6.jpg" alt="">
                                <p>Daiane Smith, <span>Customer</span></p>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide text-center">
                            <h5>Perfect Home for me</h5>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                            <div class="testimonial-author-info">
                                <img src="./ressources/images/HomeImg/bg-img/feature6.jpg" alt="">
                                <p>Daiane Smith, <span>Customer</span></p>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide text-center">
                            <h5>Perfect Home for me</h5>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                            <div class="testimonial-author-info">
                                <img src="./ressources/images/HomeImg/bg-img/feature6.jpg" alt="">
                                <p>Daiane Smith, <span>Customer</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
<script  src="./ressources/js/HomeJs/jquery/jquery-2.2.4.min.js"></script>
<script  src="./ressources/js/HomeJs/popper.min.js"></script>
<script  src="./ressources/js/HomeJs/bootstrap.min.js"></script>
<script  src="./ressources/js/HomeJs/plugins.js"></script>
<script  src="./ressources/js/HomeJs/classy-nav.min.js"></script>
<script  src="./ressources/js/HomeJs/jquery-ui.min.js"></script>
<script  src="./ressources/js/HomeJs/active.js"></script>

</html>