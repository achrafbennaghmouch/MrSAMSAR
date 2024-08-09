

  <%@page import="Models.User"%>
<%
	
	User u= (User)session.getAttribute("currentuser");
    
    if(u==null){  response.sendRedirect("http://localhost:8080/Mrsamsar/login"); 
    }else{
%>
<div id="profile-upper">
    <!------------votre photo couvertir----------->
    <div id="profile-couvert-image">
      <img src="" alt="Banner image">
    </div>
    <!------------votre photo profile----------->
    <div id="profile-d">
      <div id="profile-pic">
        <img src="./ressources/images/pardefaut.png">
      </div>
       <!------------votre nom----------->
      <div id="u-name"><%out.print(u.getPrenom()+" "+ u.getNom());%></div>
    </div>  
       <div id="black-grd"></div>
  </div>
<%} %>

