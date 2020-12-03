<%-- 
    Document   : home
    Created on : 24/10/2020, 04:48:11
    Author     : agus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Club</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <div class="container-fluid p-2 bg-warning">
        <h1 class=" text-center display-3">¡Bienvenidos a nuestro Club!</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/img3.jpeg"  class="d-block w-100" alt="equipofutbol">
    </div>
    <div class="carousel-item">
      <img src="img/img4.jpeg" class="d-block w-100" alt="yoga">
    </div>
    <div class="carousel-item">
      <img src="img/img5.jpeg" class="d-block w-100" alt="rugby">
    </div>
  </div>
      <div class="carousel-item">
      <img src="img/img1.jpeg" class="d-block w-100" alt="gym">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                </div>
            <div class="text-center p-2">
        <h3>Desde la base hasta el alto rendimiento</h3>
        
        <p class="lead">El Club Deportivo proporciona entrenamiento deportivo, actividades y competiciones 
    a todos aquellos deportistas que les gusta desafiarse desde la base hasta el alto rendimiento.
    <br>
        Durante todo el año ofrecemos una gran diversidad 
        de disciplinas deportivas, dándoles la oportunidad de seguir desarrollando 
        su preparación física, demostrar coraje, experimentar la alegría del triunfo, 
        participar en la comunidad, adquirir destrezas, conocimientos y hacer amigos.</p>
            </div>
         
        </div>
        </div>
        <div class="container-fluid p-2 bg-warning text-center">
    <h2> ¡Te invitamos a formar parte!</h2>
    <h5>informacion@clubdeportivo.com</h5>
        </div>
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    </body>
</html>
