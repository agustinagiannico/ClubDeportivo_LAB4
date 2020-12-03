<%-- 
    Document   : listadoNoticia
    Created on : 16/11/2020, 08:22:11
    Author     : agus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="lista" scope="request" class="gestores.GestorBD"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
      
        <title>Listado Noticias</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
     <div class="container">
            <div class="row">
                <div class="col-sm-12">
                     <h1 class="mt-5 mb-5 display-3">Listado de Noticias Visibles</h1>
                </div>
                     
                <div class="col-md-8 ">
    <c:forEach var="n" items="${lista.obtenerListadoNoticias}">
      <div class="card mb-2">
    
        <div class="card-header">
            ${n.fecha} - ${n.actividad.actividad}
        </div>
        <div class="card-body">
            <h5 class="card-title">${n.titulo}</h5>
            <p class="card-text">${n.noticia}</p>
            <td><a class="btn btn-danger"href="/ClubDeportivo/OcultarNoticia?id=${n.idNoticia}">Ocultar</a></td>     
            
        </div>
      </div>
             </c:forEach>
                </div>
                
                 <div class="col-md-4">
	<a class="btn btn-success" href="/ClubDeportivo/AgregarNoticia">Agregar Noticia</a>
          </div>
                
	 <div class="col-sm-12">
                     <h1 class="mt-5 mb-5 display-3">Listado de Noticias Ocultas</h1>
                </div>
    <div class="col-md-8 ">
    <c:forEach var="n" items="${lista.obtenerListadoNoticiasOcultas}">
      <div class="card mb-2">
    
        <div class="card-header">
            ${n.fecha} - ${n.actividad.actividad}
        </div>
        <div class="card-body">
            <h5 class="card-title">${n.titulo}</h5>
            <p class="card-text">${n.noticia}</p>
            <a class="btn btn-warning"href="/ClubDeportivo/MostrarNoticia?id=${n.idNoticia}">Mostrar</a> 
            
        </div>
      </div>
             </c:forEach>
                </div>
         
	<div class="col-md-4"></div>
       
           </div>
     </div>
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
    </body>
</html>
