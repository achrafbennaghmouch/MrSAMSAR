

<%@page import="Models.User"%>

<%
	User u =(User)session.getAttribute("currentuser");
%>

         
            <div class="row"> 
            <div class="col-lg-12 Title">Coordonnées personnelles:</div>

             <div class="card col-lg-8 offset-lg-1 info-text-value ">
              <div class="card-body">
                <div class="row  row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Nom</p>
                  </div>
                  <div class="col-lg-8">
                    <p class="text-muted mb-0 row-value"><%=u.getNom() %></p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Prenom</p>
                  </div>
                  <div class="col-lg-8">
                    <p class="text-muted mb-0 row-value"><%=u.getPrenom() %></p>
                  </div>
                </div>
                <hr>
                <div class="row row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Email</p>
                  </div>
                  <div class="col-lg-8">
                    <p class="text-muted mb-0 row-value"><%=(u.getC()).getLogin() %></p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value" >
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Mobile</p>
                  </div>
                  <div class="col-lg-8">
                    <p class="text-muted mb-0 row-value"><%=(u.getC()).getNumtel() %></p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value" >
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Date naissance</p>
                  </div>
                  <div class="col-lg-8">
                    <p class="text-muted mb-0 row-value"><%=u.getDatenaissance().split(" ")[0] %></p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Adresse</p>
                  </div>
                  <div class="col-lg-8">
                    <p class="text-muted mb-0 row-value"><%=u.getAdress() %></p>
                  </div>
                </div>
              </div>
            </div>
             </div>
             <br>
