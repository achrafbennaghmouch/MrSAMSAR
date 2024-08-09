

<%@page import="Models.User"%>
<%
	
	User u =(User)session.getAttribute("currentuser");
    if(u==null){ 
    	response.sendRedirect("http://localhost:8080/Mrsamsar/login"); 
    }else{
%>

<div class="col-lg-10 td content" id="m-col " >
          <div class="row" >
          <!--partier header-content-->
          
          <div class="col-lg-12 td">
              <div class="m-mrg" id="p-tabs">
                <div class="tb">
                <div class="tb" id="p-tabs-m">
                <div class="td optns " onclick="operation1()"><i class="fa-regular fa-address-card"></i><span>MES INFORMATIONS</span></div>
                <div class="td optns " onclick="operation2()"><i class="fa-regular fa-images"></i><span>ANNONCES</span></div>
                <div class="td optns" onclick="operation3()"><i class="fa-regular fa-pen-to-square"></i><span>MODIFICATION</span></div>
                <div class="td optns" onclick="operation4()"><i class="fa-solid fa-heart-circle-check"></i><span>FAVORIS</span></div>
                <div class="td optns" onclick="operation5()"><i class="fa fa-cog" aria-hidden="true"></i><span>PARAMETRE</span></div>
              </div>
            </div>
          </div>
           </div>

 <!----------------------------------------------------------------------------------------------------------------------------------------------------->        
 <!-- --------------------------------------------------------------------------------------------------------------------------------------------------->          

 <div class="col-lg-12 exemples-annonce " id="choixtOp">
     <jsp:include page="../../../components/authsystem/Profil/ComponentContent/MesInformations.jsp" />
 </div>      
<!------------------------------------------------------------------------------------------------------------------------------------------------------------------>      
<!------------------------------------------------------------------------------------------------------------------------------------------------------------------>    
   </div>
        </div>
        
        
        <%} %>
