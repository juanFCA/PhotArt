<%-- 
    Document   : index
    Created on : 27/08/2018, 21:14:03
    Author     : alunoces
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="img/favicon.ico">

        <title> Photart</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/jumbotron-narrow.css" rel="stylesheet">

    </head>

    <body>

        <div class="container">
            <div class="header clearfix">
                <nav>
                    <ul class="nav nav-pills pull-right">
                        <li role="presentation" ><a href="#">Início</a></li>
                        <li role="presentation" ><a href="#">Buscar Imagens</a></li>
                        <li role="presentation"><a href="#">Sobre</a></li>
                    </ul>
                </nav>
                <h1 class="text-muted"><img src="img/camera.png" width="48" alt="..." /> PhotArt</h1>
            </div>
            <div>
                <div class="container">
                    <div class="row">
                        <div class="pull-right">
                            <h3><span class="glyphicon glyphicon-camera" aria-hidden="true"></span> Simetria <small> por @yuanzhangliang</small></h3>
                        </div>
                        <img src="img/pic.jpg" alt="..." class="img-thumbnail">
                    </div> 
                    <div class="row"> 
                        <div class="col-sm-3">
                            <a id="addcomment" href="add-comment.jsp" class="btn btn-lg btn-success" > <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Adicionar Avaliação </a>
                        </div>
                        <div class="col-sm-3 col-sm-offset-6">
                            <div>
                                <h2> <small style="color: black">Avaliação </small> <fmt:formatNumber value="${media == null? 0 : media}" maxFractionDigits="1" /><small>/ 5</small></h2>
                                <button type="button" class="btn ${media >0  ? "btn-warning" : "btn-default" } btn-sm" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </button>
                                <button type="button" class="btn ${media >1  ? "btn-warning" : "btn-default" } btn-sm" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </button>
                                <button type="button" class="btn ${media >2  ? "btn-warning" : "btn-default" } btn-sm" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </button>
                                <button type="button" class="btn ${media >3  ? "btn-warning" : "btn-default" } btn-sm" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </button>
                                <button type="button" class="btn ${media >4  ? "btn-warning" : "btn-default" } btn-sm" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>			
                    </div>    
                    <div class="row"> 
                        <h2>Avaliações</h2>
                        <hr />
                        <c:if test="${not empty avaliacoes}">
                        <c:forEach var="avaliacao" items="${sessionScope.avaliacoes}">
                        <div>
                            <div class="media"> 
                                <div class="media-left"> 
                                    <a href="#"> 
                                        <img alt="64x64" class="media-object" data-src="holder.js/64x64" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNWRiYTEwYTc2ZCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1ZGJhMTBhNzZkIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxMi41NDY4NzUiIHk9IjM2LjUiPjY0eDY0PC90ZXh0PjwvZz48L2c+PC9zdmc+" data-holder-rendered="true" style="width: 64px; height: 64px;"> 
                                    </a>
                                </div> 
                                <div class="media-body"> 
                                        <h3 class="media-heading"> ${avaliacao.titulo} <small>por ${avaliacao.usuario}</small></h3> 
                                        <p class="comment">${avaliacao.avaliacao}.</p> 
                                    
                                    <div >
                                        <c:choose>
                                                    <c:when test="${avaliacao.nota == 1}">
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                           <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default  btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                    </c:when>
                                                       <c:when test="${avaliacao.nota == 2}">
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                           <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default  btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                    </c:when>
                                                       <c:when test="${avaliacao.nota == 3}">
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                           <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default  btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                    </c:when>
                                                       <c:when test="${avaliacao.nota == 4}">
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                           <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning  btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-default btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                           <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning  btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                        <button type="button" class="btn btn-warning btn-sm" aria-label="Left Align">
                                                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                                        </button>
                                                    </c:otherwise>
                                                </c:choose>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br>
                                </div> 
                            </div> 
                        </div>
                        </c:forEach>
                        </c:if>
                        <c:if test="${empty avaliacoes}">
                            <p>Nenhuma avaliação enviada, seja o primeiro a avaliar!</p>
                        </c:if>
                    </div>             

                </div>
            </div>

            <footer class="footer">
                <p>&copy; 2018 Laborátorio de Web Sites Dinâmicos - CES JF.</p>
            </footer>

        </div> <!-- /container -->

        <script src="https://use.fontawesome.com/45e03a14ce.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>
