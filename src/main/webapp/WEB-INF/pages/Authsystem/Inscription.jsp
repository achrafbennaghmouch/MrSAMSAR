<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <link rel="stylesheet" href="./ressources/css/Inscriptio.css">
    <script src="jquery.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<div class="container-fluid">
<div class="row">
<!--------------------------header------------------------------------------------------->
    <jsp:include page="../../shared/Headers/HeaderBeforeAuth.jsp" />
    
<!--------------------------Components------------------------------------------------------->
	<jsp:include page="../../components/authsystem/RegisterComponent.jsp" />
	
<!--------------------------Footers------------------------------------------------------->
	<jsp:include page="../../shared/Footers/FooterBeforeAuth.jsp" />
	</div>
	</div>
</body>
</html>