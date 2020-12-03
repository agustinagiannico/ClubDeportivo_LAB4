<%-- 
    Document   : listadoInscripcion
    Created on : 18/11/2020, 11:26:50
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
        <title>Listado de Inscripciones</title>
    </head>
    <body>
         <%@include file="navbar.jsp"%>
         
         <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="mt-5 mb-5 display-3">Listado de Inscripciones</h1>
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-6 text-center">
        <table class="table table-striped">
        <thead>
            <tr>
                
                <th scope="col">Socio</th>
                <th scope="col"></th>
     
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${lista.obtenerSociosInscriptos}">
             <tr>
                 
		
		<td>${c.nombre} ${c.apellido}</td>
		

		<td><a class="btn btn-warning"href="/ClubDeportivo/RegistrarPago?id=${c.idSocio}">Ver</a></td>
         
             </tr>
            
            </c:forEach>
 
	</table>
	<a class= "btn btn-success" href="/ClubDeportivo/AgregarCuota">Agregar Inscripción</a>
        </div>
                    <div class="col-md-3"></div>
      </div>
          </div>
         
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
    </body>
</html>
