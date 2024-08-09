         

<%@page import="Dao.DaoAnnonce"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Annonce"%>
<%@page import="Models.User"%>

<%
	User u =(User)session.getAttribute("currentuser");
%>  
         
          <div class=" col-lg-12 exemples-annonce">
               <div class="row">
               
               <% ArrayList<Annonce> Annonces = new ArrayList<Annonce>(DaoAnnonce.AllAnnonces( u.getId()) );
                     for(Annonce an :Annonces){ 
                 
               %>
                <div class="col-lg-6 tt_Anns">
                    <div class="col-lg-4 col-md-6 col-xl-4 tt_Ann">
                        <div class="single-featured-property mb-50 wow fadeInUp Annonce" data-wow-delay="600ms" onmouseover="Annoncehover(this)" onmouseout="AnnonceDehover(this)">
                            
                            <!-- Property Thumbnail -->
                            <div class="pop"></div>
                            <div class="property-thumb">
                                <img src="./ressources/img/bg-img/feature6.jpg" alt="">
                                <div class="tag"> 
                                    <span>For Sale</span>
                                </div>
                                <div class="list-price">
                                    <p>$<%= an.getPrix() %></p>
                                </div>
                            </div>
                             <!------------Modification _AND_Visualiser----------->
                               <div class="xxx"> <div class="abc" id="cpg2" onclick=""><i class="fa-solid fa-ellipsis-vertical"></i></div>
                                          <!------------OPTION DE MODIFICATIONS-------->
		                                <div class="upSetting">
		                                    <div class="row">
		                                        <div class="col-lg-12 " style="text-align: center;background-color: #f4f4f4 !important; border-radius:5px;">
		                                                <div class="op_mod" ><a href="#" id="supp"><i class="fa-solid fa-trash-can"></i><span>supprimer</span></a></div>
		                                                <div class="op_mod" ><a href="#"  id="modif"><i class="fa-solid fa-pencil"></i><span >Modifier</span></a></div>
		                                                <input type="hidden" value="1">
		                                        </div>
		                                    </div>
		                                </div>
                               </div>
                                <div class="abc" id="cpg1" onclick=""><i class="fa-regular fa-eye"></i></div>
                             
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5><%= an.getTitre() %></h5>
                                <div class="Favoris" onclick="DoFav(this)">
                                   <i class="fa-regular fa-heart BeforeFav"></i>
                                   <i class="fa-solid fa-heart AfterFav"></i>   
                                </div>
                                <p class="location"><img src="./ressources/img/icons/location.png" alt=""> <%=an.getAdress() %></p>
                                <p><%= an.getDescription() %></p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="./ressources/img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="./ressources/img/icons/bathtub.png" alt="">
                                        <span><%=an.getNbrbains() %></span>
                                    </div>
                                    <div class="garage">
                                        <img src="./ressources/img/icons/garage.png" alt="">
                                        <span><%=an.getNbrpieces() %></span>
                                    </div>
                                    <div class="space">
                                        <img src="./ressources/img/icons/space.png" alt="">
                                        <span><%=an.getSurface() %> sq ft</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             
              <%} %>
                </div></div>
                  <div class="col-lg-12 espace"></div>
             