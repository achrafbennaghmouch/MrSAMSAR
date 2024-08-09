<%@page import="Dao.DaoAnnonce"%>
<%@page import="Models.Annonce"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    int idAnn= Integer.parseInt(request.getParameter("id"));
    Annonce annonce = DaoAnnonce.getAnnonceById(idAnn);
 
    %>
<!doctype html>
<html lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./ressources/css/Profil/Form-Update-Ann.css">
     <script type="text/javascript" src="./ressources/js/jquery.js"></script>
    <title>Form de modification</title>
</head>
<body>
   <div class="container mt-6">
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class=" mt-12 modal-header">
                        <h5 class="modal-title">Form de Modifications</h5>
                    </div>

                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="form-label required">Image : 1</label>
                                            <div class="form">
                                                <div class="grid">
                                                <div class="form-element">
                                                    <input type="file" id="file-1" accept="image/*">
                                                    <label for="file-1" id="file-1-preview">
                                                    <img src="https://bit.ly/3ubuq5o" alt="">
                                                    <div>
                                                        <span>+</span>
                                                    </div>
                                                    </label>
                                                </div>
                                                </div>
                                            </div>
                                    </div> 
                                    <div class="col-lg-4">
                                        <label class="form-label required">Image : 2</label>
                                            <div class="form">
                                                <div class="grid">
                                                <div class="form-element">
                                                    <input type="file" id="file-1" accept="image/*">
                                                    <label for="file-1" id="file-1-preview">
                                                    <img src="https://bit.ly/3ubuq5o" alt="">
                                                    <div>
                                                        <span>+</span>
                                                    </div>
                                                    </label>
                                                </div>
                                                </div>
                                            </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="form-label required">Image : 3</label>
                                            <div class="form">
                                                <div class="grid">
                                                <div class="form-element">
                                                    <input type="file" id="file-1" accept="image/*">
                                                    <label for="file-1" id="file-1-preview">
                                                    <img src="https://bit.ly/3ubuq5o" alt="">
                                                    <div>
                                                        <span>+</span>
                                                    </div>
                                                    </label>
                                                </div>
                                                </div>
                                            </div>
                                    </div>
                                </Sdiv>
                            </div>
                            </div>
                            <div class="mb-3">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="form-label required">Titre</label>
                                        <input type="text" id="titre" class="form-control" value=" <%=annonce.getTitre()%>">
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="form-label required">Prix</label>
                                        <input type="text" id="prix" class="form-control" value="<%=annonce.getPrix()%>">
                                    </div>
                                      <div class="col-lg-4">
                                        <label class="form-label required">Type d'Annonce</label>
                                         <select class="form-select" aria-label="Default select example" id="SelectType"> 
                                                <option selected>Vendre</option>
                                                <option value="1">Louer</option>
                                              </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <label class="form-label required">Province</label>
                                              <select class="form-select" aria-label="Default select example" id="SelectProvince" >
                                                <option selected>Casablanca-Settat</option>
                                                <option value="1">Tangier-Tetouan-Al Hoceima </option>
                                                <option value="2">Marrakech-Safi</option>
                                                <option value="3">Dakhla-Oued Ed Dahab</option>
                                              </select>
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="form-label required">Ville</label>
                                             <select class="form-select" aria-label="Default select example" id="SelectVille">
                                                <option selected>Casablanca</option>
                                                <option value="1">Berchid</option>
                                                <option value="2">Mediouna</option>
                                                <option value="3">Settat</option>
                                              </select>
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="form-label required">Quartier</label>
                                            <select class="form-select" aria-label="Default select example" id="SelectQuartier">
                                                <option selected>Casablanca-Settat</option>
                                                <option value="1">Tangier-Tetouan-Al Hoceima </option>
                                                <option value="2">Marrakech-Safi</option>
                                                <option value="3">Dakhla-Oued Ed Dahab</option>
                                              </select>
                                        </div>
                                      
                                    </div>
                            </div>
                            <div class="mb-3">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="form-label required">Nombre du bains</label>
                                        <input type="number" id="nbrbain" class="form-control" value="<%=annonce.getNbrbains()%>">
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="form-label required">Nombre de pieces</label>
                                        <input type="number" id="nbrpiece" class="form-control" value="<%=annonce.getNbrpieces()%>">
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="form-label required">Surface</label>
                                        <input type="number" id="surface" class="form-control" value="<%=annonce.getSurface()%>">
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label required">Description</label>
                                <input  type="text"  class="form-control" id="descr" name="description" required minlength="10" maxlength="40" size="20" value="<%=annonce.getDescription()%>">
                            </div>
                        </form>  
                    </div>

                    <div class="modal-footer col-lg-5 offset-2">
                        <button type="submit" class="btn btn-success" onclick="modifier()">Valider</button>
                        <button  class="btn btn-danger"> <a href="http://localhost:8080/Mrsamsar/profil" style="color: white ;text-decoration: none "> Annuler</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="./ressources/js/JSprofil/Form-Update-Ann.js"></script>
     <script src="./ressources/js/JSprofil/ModificationAnn.js"></script>
</body>

</html>