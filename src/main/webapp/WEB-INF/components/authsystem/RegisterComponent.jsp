
 
<%@page import="Models.User"%>
<%
  User u = (User)session.getAttribute("currentuser");
     if(u!=null){  response.sendRedirect("http://localhost:8080/Mrsamsar/profil");  }else{
  %>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./ressources/css/Inscriptio.css">
    <script src="jquery.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body >
<form action="register" method="post">
    <div class="container-fluid" >
      
        <div class=" content row">
         
            <div class="col-lg-5 offset-lg-1" id="img">
                <img src="./ressources/images/imges-inscri.jpeg" width="650" height="650">
             </div>
           
            <div class="col-lg-4 offset-lg-1 " id="milieu">
              
                <div class="row ">
                    <div class="desc ">
                    <h2>Envie d'etre un particulier?</h2>
                </div>
                <div class="row ">
                    
                    <div class="col-lg-12 ">
                   <p>Inscrivez-vous pour découvrir toutes nos fonctionnalités.</p>
                </div>
                <div class="col-lg-5 offset-lg-1 ">
                    <label>Prénom:</label>
                    <input type="text" class="form-control" name="prenom" >
                  </div> 
                  <div class="col-lg-5 ">
                    <label>Nom:</label>
                    <input type="text" class="form-control" name="nom">
                  </div>  
                  <div class="col-lg-10 offset-lg-1">
                    <label class="fs">Birthday:</label>
                    <input type="date" class="form-control" id="birthday" name="birthday">
                  </div>   
                    <div class="col-lg-10 offset-lg-1">
                        <label class="fs">E-mail:</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="login">
                    </div>
                    <div class="col-lg-10 offset-lg-1">
                        <label  class="fs">Numéro de téléphone:</label>
                        <input type="text" class="form-control" name="numtel" >
                      </div> 
                    <div class="col-lg-10 offset-lg-1">
                        <label id="labe2" class="fs">Mot de Passe:</label>
                        <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="password">
                    
                    </div>
                                 
                    <div class="col-lg-10 offset-lg-1">
                        <button class="btn btn-primary btn-block" type="submit" id="butt">S'inscrire</button>
                        
                      </div>
                      <div class="row">
                        <div class="col-lg-12 ">
                            <p id="p3">Avez-vous déja un compte ? <a href="http://localhost:8080/Mrsamsar/login">Connectez-vous !  </a>                          
                              </p>
                        </div>
             </div>
            
</div>
</div>

    </div>
 
  
  
    </div>    
</div>
   
</form> 
   
   
</body>
<script src="inscription.js"></script>
</html>
 <%
 
 }
%>