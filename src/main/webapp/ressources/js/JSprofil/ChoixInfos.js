
function operation1(){
   var option1="mesinfo" ;

       $.post("http://localhost:8080/Mrsamsar/profil",{option:option1},function(data){
	data = JSON.parse(data)

	var cvb = data.datenaissance.split(' ')
	var NvDate=cvb[0]
	
	var html =`
       <div class="row"> 
            <div class=" col-lg-12 Title">Coordonnées personnelles:</div>

             <div class="card col-lg-10 offset-lg-1 info-text-value ">
              <div class="card-body">
                <div class="row  row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Nom</p>
                  </div>
                  <div class="col-lg-5 offset-lg-2">
                    <p class="text-muted mb-0 row-value">${data.nom}</p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Prenom</p>
                  </div>
                  <div class="col-lg-5 offset-lg-2">
                    <p class="text-muted mb-0 row-value">${data.prenom}</p>
                  </div>
                </div>
                <hr>
                <div class="row row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Email</p>
                  </div>
                  <div class="col-lg-5 offset-lg-2">
                    <p class="text-muted mb-0 row-value">${data.c.login}</p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value" >
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Mobile</p>
                  </div>
                  <div class="col-lg-5 offset-lg-2">
                    <p class="text-muted mb-0 row-value">${data.c.numtel}</p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value" >
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Date Naissance</p>
                  </div>
                  <div class="col-lg-5 offset-lg-2">
                    <p class="text-muted mb-0 row-value">${NvDate}</p>
                  </div>
                </div>
                <hr>
                <div class="row  row-text-value">
                  <div class="col-lg-4">
                    <p class="mb-0 row-text">Adresse</p>
                  </div>
                  <div class="col-lg-6 offset-lg-2">
                    <p class="text-muted mb-0 row-value">Province:${data.adress.province},<br> Ville:${data.adress.ville},<br> Quartier:${data.adress.Quartier}</p>
                  </div>
                </div>
              </div>
            </div>
             </div>
             <br>`
       
       document.getElementById("choixtOp").innerHTML=html;
console.log(data.adress)
 });
}

function operation2(){
   var option1="annonces" ;

       $.post("http://localhost:8080/Mrsamsar/profil",{option:option1},function(data){
	datas = JSON.parse(data)
	console.log(datas)
	var html2=`<div class="row">`;
	 for(data of datas ){
		  html2+=`
            
              <div class="col-lg-4 tt_Anns">
                <div class="col-lg-4 col-md-6 col-xl-4 tt_Ann">
                    <div class="single-featured-property mb-50 wow fadeInUp Annonce" data-wow-delay="600ms" onmouseover="Annoncehover(this)" onmouseout="AnnonceDehover(this)">
                        
                        <!-- Property Thumbnail -->
                        <div class="pop"></div>
                        <div class="property-thumb">
                            <img src="./ressources/img/bg-img/${data.image}" alt="">
                            <div class="tag"> 
                                <span>${data.type}</span>
                            </div>
                            <div class="list-price">
                                <p>${data.prix}DH</p>
                            </div>
                        </div>
                         <!------------Modification _AND_Visualiser----------->
                           <div class="xxx"> <div class="abc" id="cpg2" onclick=""><i class="fa-solid fa-ellipsis-vertical"></i></div>
                                      <!------------OPTION DE MODIFICATIONS-------->
                                <div class="upSetting">
                                    <div class="row">
                                        <div class="col-lg-12 " style="text-align: center;background-color: #f4f4f4 !important; border-radius:5px;">
                                                <div class="op_mod" onclick="deleteAnn(this)"><a href="#" id="supp"><i class="fa-solid fa-trash-can" ></i><span >supprimer</span></a></div>
                                                <div class="op_mod"><a href="http://localhost:8080/Mrsamsar/modifier?id=${data.id}" id="modif" value="modifier"><i class="fa-solid fa-pencil" ></i><span >Modifier</span></a></div>
                                                <input type="hidden" value="${data.id}">
                                        </div>
                                    </div>
                                </div>
                           </div>
                            <div class="abc" id="cpg1" onclick=""><a href="http://localhost:8080/Mrsamsar/detail?id=${data.id}"> <i class="fa-regular fa-eye"></i> </a></div>
                         
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>${data.titre}</h5>
                            <div class="Favoris" onclick="DoFav(this)">
                               <i class="fa-regular fa-heart BeforeFav"></i>
                               <i class="fa-solid fa-heart AfterFav"></i>
                               <input type="hidden" value="${data.id}">   
                            </div>
                            <p class="location"><img src="./ressources/img/icons/location.png" alt="">${data.adress}</p>
                            <p>${data.description}</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/img/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/img/icons/bathtub.png" alt="">
                                    <span>${data.nbrbains}</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/img/icons/garage.png" alt="">
                                    <span>${data.nbrpieces}</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/img/icons/space.png" alt="">
                                    <span>${data.surface} sq ft</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
     `
    
	}
      document.getElementById("choixtOp").innerHTML=html2;
 });
}

function operation3(){
	
   var option1="modification";
       $.post("http://localhost:8080/Mrsamsar/profil",{option:option1},function(data){
		datas = JSON.parse(data)
	var cvb = datas.datenaissance.split(' ')
	var NvDate=cvb[0]
    var html3=`
             <div class="row">
                                  <div class="col-lg-12 sous-tit">
                                    <div class="row">
                                      <div class="col-lg-6">
                                        <p>Form de modification :</p>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-lg-10 offset-1 info-update" >
                                    <div class="row">
                                      <div class="form-outline col-lg-12">
                                        <div class="row">
                                          <div class="col-lg-3 offset-1"><label class="form-label" for="form3Example1cg">Nom</label></div>
                                          <div class="colg-8 offset-1"><input type="text" id="nom-user" class="form-control" value="${datas.nom}" /></div>
                                        </div>
                                      </div>
                                      <div class="form-outline col-lg-12">
                                        <div class="row">
                                          <div class="col-lg-3 offset-1"><label class="form-label" for="form3Example1cg">Prenom</label></div>
                                          <div class="colg-8 offset-1"><input type="text" id="prenom-user" class="form-control" value="${datas.prenom}" /></div>
                                        </div>
                                      </div>
                                      <div class="form-outline col-lg-12">
                                        <div class="row">
                                          <div class="col-lg-3 offset-1"><label class="form-label" for="form3Example1cg">Mobile</label></div>
                                          <div class="colg-8 offset-1"><input type="text" id="numtel-user" class="form-control" maxlength="10" value="${datas.c.numtel}" /></div>
                                        </div>
                                      </div>
                                      <div class="form-outline col-lg-12">
                                        <div class="row">
                                          <div class="col-lg-3 offset-1"><label class="form-label" for="form3Example1cg">Date naissance</label></div>
                                          <div class="colg-8 offset-1"><input type="date" id="datenaissance-user" class="form-control" max="2004-01-01" value="${NvDate}"/></div>
                                        </div>
                                      </div>
                                      <div class="form-outline col-lg-12">
                                        <div class="row">
                                          <div class="col-lg-3 offset-1"><label class="form-label" for="form3Example1cg">Adress</label></div>
                                              <div class="col-lg-7 offset-1 info-adress">
                                                   <div class="row">
                                                    <div class="col-lg-3">
                                                      <p>Province</p>
                                                    </div>
                                                   <div class="col-lg-9">
                                                    <select class="form-select" aria-label="Default select example" id="province-user" >
                                                      <option selected>Rabat_Sale_Kenitra</option>
                                                      <option value="1">Beni_Mellal_Khenifra</option>
                                                      <option value="2">Casablanca_Settat</option>
                                                      <option value="3">Marrakech_Safi</option>
                                                    </select>
                                                   </div>
                                              </div>
                                               </div>
                                                <div class="col-lg-7 offset-5 info-adress">
                                                    <div class="row">
                                                    <div class="col-lg-3">
                                                      <p>Ville</p>
                                                    </div>
                                                    <div class="col-lg-9">
                                                    <select class="form-select" aria-label="Default select example" id="ville-user" >
                                                    <option selected>Casablanca</option>
                                                    <option value="1">Mohammedia</option>
                                                    <option value="2">Berrechid</option>
                                                    </select>
                                                    </div>
                                                       </div>
                                                </div>
                                                <div class="col-lg-7 offset-5 info-adress">
                                                  <div class="row">
                                                  <div class="col-lg-3">
                                                    <p>Quartier</p>
                                                  </div>
                                                  <div class="col-lg-9">
                                                  <select class="form-select" aria-label="Default select example" id="quartier-user" >
                                                    <option selected>Casablanca_Anfa</option>
                                                    <option value="1">Sidi_Bernoussi</option>
                                                    <option value="2">Al_Fida_Mers_Sultan</option>
                                                    <option value="3">Ain_Chock</option>
                                                  </select>
                                                  </div>
                                                 </div>
                                                </div>
                                         
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                              
                                <div class="col-lg-12 button-infoPro">
                                    <div class="row">
                                     <div class="col-lg-4 offset-8">
                                      <button type="submit" class="btn btn-success" onclick="InfoProfil()">Valider</button>
                                      <button type="submit" class="btn btn-danger">Annuler</button>
                                     </div></div>
                                  </div>
                      
                  
                                  
                 </div>
                        
  
     `
      document.getElementById("choixtOp").innerHTML=html3;
 });
}
function  deletefav(y){
	
          var x = y.parentElement.children[1].value;

   if(confirm("Vous voulez vraiment supprimer!!!")){
	     $.post("http://localhost:8080/Mrsamsar/FavorisController",{"id":x,op:"Delete"},function(data){
		    if(data=="true"){
			alert("Bien Supprimer");
		   }else if(data=="false"){
			alert("Error de suppression");
		    }

        });
    y.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.remove();
}

    }
function operation4(){
   var option1="favoris" ;

    $.post("http://localhost:8080/Mrsamsar/profil",{option:option1},function(data){
	datas = JSON.parse(data)
	
	var html3=`<div class="row">`;
	 for(data of datas ){
		  html3+=`
            
              <div class="col-lg-4 tt_Anns">
                <div class="col-lg-4 col-md-6 col-xl-4 tt_Ann">
                    <div class="single-featured-property mb-50 wow fadeInUp Annonce" data-wow-delay="600ms" onmouseover="Annoncehover(this)" onmouseout="AnnonceDehover(this)">
                        
                        <!-- Property Thumbnail -->
                        <div class="pop"></div>
                        <div class="property-thumb">
                            <img src="./ressources/img/bg-img/${data.image}" alt="">
                            <div class="tag"> 
                                <span>${data.type}</span>
                            </div>
                            <div class="list-price">
                                <p>${data.prix}DH</p>
                            </div>
                        </div>
                         <!------------Modification _AND_Visualiser----------->
                           <div class="xxx"> <div class="abc" id="cpg2" onclick=""><i class="fa-solid fa-ellipsis-vertical"></i></div>
                                      <!------------OPTION DE MODIFICATIONS-------->
                                <div class="upSetting">
                                    <div class="row">
                                        <div class="col-lg-12 " style="text-align: center;background-color: #f4f4f4 !important; border-radius:5px;">
                                                <div class="op_mod" onclick="deleteAnn(this)"><a href="#" id="supp"><i class="fa-solid fa-trash-can" ></i><span >supprimer</span></a></div>
                                                <div class="op_mod"><a href="http://localhost:8080/Mrsamsar/modifier?id=${data.id}" id="modif" value="modifier"><i class="fa-solid fa-pencil" ></i><span >Modifier</span></a></div>
                                                <input type="hidden" value="${data.id}">
                                        </div>
                                    </div>
                                </div>
                           </div>
                            <div class="abc" id="cpg1" onclick=""><a href="http://localhost:8080/Mrsamsar/detail?id=${data.id}"> <i class="fa-regular fa-eye"></i> </a></div>
                         
                        <!-- Property Content -->
                        <div class="property-content">
                            <h5>${data.titre}</h5>
                            <div class="Favoris" >
                               <i class="fas fa-trash" onclick="deletefav(this)"></i>  
                               <input type="hidden" value="${data.id}">  
                            </div>
                            <p class="location"><img src="./ressources/img/icons/location.png" alt="">${data.adress}</p>
                            <p>${data.description}</p>
                            <div class="property-meta-data d-flex align-items-end justify-content-between">
                                <div class="new-tag">
                                    <img src="./ressources/img/icons/new.png" alt="">
                                </div>
                                <div class="bathroom">
                                    <img src="./ressources/img/icons/bathtub.png" alt="">
                                    <span>${data.nbrbains}</span>
                                </div>
                                <div class="garage">
                                    <img src="./ressources/img/icons/garage.png" alt="">
                                    <span>${data.nbrpieces}</span>
                                </div>
                                <div class="space">
                                    <img src="./ressources/img/icons/space.png" alt="">
                                    <span>${data.surface} sq ft</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
     `
    console.log(html3)
	}
      document.getElementById("choixtOp").innerHTML=html3;
 });
       console.log(html3)

}

function operation5(){
   var option1="parametre" ;
       $.post("http://localhost:8080/Mrsamsar/profil",{option:option1},function(data){
       console.log(data)
 });
}