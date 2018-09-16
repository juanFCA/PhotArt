<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title> Photart</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/jumbotron-narrow.css" rel="stylesheet">
    </head>

    <body>
      <div class="container">
        <div class="header clearfix">
           
            <h1 class="text-muted"><img src="img/camera.png" width="48" alt="..." /> PhotArt - Erro</h1>
        </div>
      <div class="container">
        <br />
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="alert alert-danger">
                    <strong>${requestScope.erro}</strong> 
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