
   

    <%@page import="Models.Compte"%>
<% 
	HttpSession ses = request.getSession();
	Compte u = (Compte)ses.getAttribute("currentuser");
	if(u==null){
		response.sendRedirect("http://localhost:8080/Mrsamsar/login");
	}else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

   <link href="./ressources/css/style.min.css" rel="stylesheet">
    <link rel="canonical" href="https://www.wrappixel.com/templates/monster-admin-lite/" />
    <link rel="icon" type="image/png" sizes="16x16" href="./ressources/assets/images/favicon.png">

<title>Insert title here</title>
</head>
<body>
 <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
	<jsp:include page="../../shared/Headers/HeaderAfterAuth.jsp" />
	<jsp:include page="../../shared/Menu/LeftSideBar.jsp" />
                    
<div class="container-fluid">
	<jsp:include page="../../components/authsystem/AchatComponent.jsp" />
	<jsp:include page="../../shared/Footers/FooterAfterAuth.jsp" />
	<form class="d-fl
      ex" action="home" method="post">
		  <button class="btn btn-outline-success" type="submit">Deconnexion</button>
      </form>
	
	</div>
<script src="./ressources/assets/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="./ressources/assets/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./ressources/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="./ressources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="./ressources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="./ressources/js/custom.js"></script></body>
</html>
<% } %>