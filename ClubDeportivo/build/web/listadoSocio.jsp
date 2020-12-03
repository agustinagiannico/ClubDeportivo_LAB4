<%-- 
    Document   : listadoSocio
    Created on : 15/11/2020, 22:37:36
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
        <title>Socio</title>
    </head>
    <body>
         <%@include file="navbar.jsp"%>
     <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="mt-5 mb-5 display-3">Listado de Socios</h1>
                </div>
                <div class="col-md-2"> </div>
                <div class="col-md-8 text-center">
        <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">DNI</th>
                <th scope="col">Teléfono</th>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
	
            <c:forEach var="socio" items="${lista.obtenerTodosLosSocios}">
                <tr>
		<th scope="row">${socio.idSocio}</th>
		<td>${socio.nombre}</td>
		<td>${socio.apellido}</td>
                <td>${socio.dni}</td> 
                <td>${socio.telefono}</td>

		<td><a class= "btn btn-warning" href="/ClubDeportivo/ModificarSocio?id=${socio.idSocio}">Modificar</a></td>
                <td><a class= "btn btn-danger" href="/ClubDeportivo/EliminarSocio?id=${socio.idSocio}">Eliminar</a></td>
            </tr>
            
            </c:forEach>
         </tbody>
	</table>
            <a class="btn btn-success" href="/ClubDeportivo/AgregarSocio">Agregar Socio </a>
        
            </div>
                <div class="col-md-2"> </div>
     </div>
     </div>
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
    </body>
</html>
