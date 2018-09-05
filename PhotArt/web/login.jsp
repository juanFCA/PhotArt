<%-- 
    Document   : login
    Created on : 27/08/2018, 21:12:12
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
           
            <h1 class="text-muted"><img src="img/camera.png" width="48" alt="..." /> PhotArt</h1>
        </div>
      <div class="container">
        <br />
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <%--<c:if test="${not empty requestScope.erro or not empty param.erro}">--%>
                <c:if test="${not empty requestScope.erro }">
                    <div class="alert alert-danger">
                        <strong>${requestScope.erro} <%--${param.erro}--%></strong> 
                    </div>
                </c:if>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">Autenticação</h3>
             </div>
              <div class="panel-body">
                  <form accept-charset="UTF-8" role="form" action="/photart/login" method="post">
                        <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="E-mail" name="usuario" required="" type="text">
                  </div>
                  <div class="form-group">
                      <input class="form-control" placeholder="Password" name="senha" required="" type="password">
                  </div>
                  <div class="checkbox">
                      <label>
                        <input name="remember" type="checkbox" value="Remember Me"> Lembrar senha
                      </label>
                    </div>
                  <input class="btn btn-lg btn-success btn-block" type="submit" value="Entrar">
                </fieldset>
                </form>
              </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="footer">
      <p>&copy; 2018 Laborátorio de Web Sites Dinâmicos - CES JF.</p>
  </footer>
  </div>
        <script src="https://use.fontawesome.com/45e03a14ce.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="js/ie10-viewport-bug-workaround.js"></script>
   </body>
</html>
