<%-- 
    Document   : add-comment
    Created on : 27/08/2018, 21:14:50
    Author     : alunoces
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="img/favicon.ico">

        <title>Photart</title>

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
                        <div class="col-sm-6">
                            <div class="pull-right">
                                <h5><span class="glyphicon glyphicon-camera" aria-hidden="true"></span> Simetria <small> por @yuanzhangliang</small></h5>
                            </div>
                            <img src="img/pic.jpg" alt="..." class="img-thumbnail">
                        </div>   

                        <div class="col-sm-6"> 
                            <h2>Escreva sua avaliação</h2>
                            <br />
                            <form class="form-horizontal" action="/photart/adicionar"  method="post">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Título</label>
                                    <div class="col-sm-10">
                                      <input type="text" name="titulo" class="form-control" id="inputEmail3" placeholder="Muito bom!">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail4" class="col-sm-2 control-label">Usuário</label>
                                    <div class="col-sm-10">
                                      <input type="text" name="usuario" class="form-control" id="inputEmail4" placeholder="@johndoe">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail5" class="col-sm-2 control-label">Avaliação</label>
                                    <div class="col-sm-10">
                                     <textarea class="form-control" name="avaliacao" id="inputEmail5" rows="3"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail5" class="col-sm-2 control-label">Nota final</label>
                                    <div class="col-sm-10">
                                        <label class="radio-inline">
                                            <input type="radio" name="nota" id="inlineRadio1" value="1"> 1
                                          </label>
                                          <label class="radio-inline">
                                            <input type="radio" name="nota" id="inlineRadio2" value="2"> 2
                                          </label>
                                          <label class="radio-inline">
                                            <input type="radio" name="nota" id="inlineRadio3" value="3"> 3
                                          </label>
                                          <label class="radio-inline">
                                            <input type="radio" name="nota" id="inlineRadio4" value="4"> 4
                                          </label>
                                          <label class="radio-inline">
                                            <input type="radio" name="nota" id="inlineRadio5" value="5"> 5
                                          </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary btn-lg pull-right"><span class="glyphicon glyphicon-send" aria-hidden="true"></span> Publicar Avaliação</button>
                                    </div>
                                </div>
                            </form>
                        </div> 
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