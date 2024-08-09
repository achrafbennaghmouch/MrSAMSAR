
   <%@page import="Models.User"%>
<%  
    
       User u=(User)session.getAttribute("currentuser");
       
       if(u!=null)
       {
    	   response.sendRedirect("http://localhost:8080/Mrsamsar/login");
       }
       else{ %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./ressources/css/authentificatio.css">

<title>Insert title here</title>
</head>
<body><form action="login" method="post">
 <div class=" content row">
            <div class="col-lg-5 offset-lg-1" id="img">
                <img src="./ressources/images/Tablet login-cuate.png" width="650" height="650">
             </div>
           
            <div class="col-lg-4 offset-lg-1 " id="milieu">
              
                <div class="row ">
                    <div class="desc ">
                    <h2>Etes-vous un particulier?</h2>
                </div>
                <div class="row ">
                    
                    <div class="col-lg-12 ">
                   <p>Connectez-vous pour découvrir toutes nos fonctionnalitiées.</p>
                </div>
                   <form action="login" method="post">
                    <div class="col-lg-10 offset-lg-1">
                        <label class="fs">E-mail:</label>
                        <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" name="login">
                    </div>
                    
                    <div class="col-lg-10 offset-lg-1">
                        <label id="labe2" class="fs">Mot de Passe:</label>
                        <input type="password" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" name="password">
                    
                    </div>
                   
                    <div class="row">
                        <p id="p2"> <a href="http://localhost:8080/Mrsamsar/forget"> Mot de passe oublié</a></p>
                    </div>
             
                    <div class="col-lg-10 offset-lg-1">
                        <button class="btn btn-primary btn-block" type="submit" id="butt">Se connecter</button>
                        
                      </div>
                       
                   
               <div class="row">
                      <div class="col-lg-12">
                          <p id="p3">Envie de nous rejoindre ? <a href="http://localhost:8080/Mrsamsar/register ">Créer un compte  </a>                          
                            </p>
                      </div>
           </div>
</div>
</div>

    </div>
  
    </div></form>
        <script type="text/javascript" src="./ressources/js/authentification.js"></script>
    
</body>

</html>
<%} %>