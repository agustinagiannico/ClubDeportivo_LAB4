<%-- 
    Document   : administracion
    Created on : 27/10/2020, 00:58:38
    Author     : agus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        
        <title>Login</title>
    </head>
    <body>
         <%@include file="navbar.jsp"%>
     <div class="container">
      <div class="row">
        <div class="col-sm-12 text-center">
                <div class="pad">
         <h3 class="mt-5 mb-5 display-3">Iniciar Sesión</h3>
                </div>
        </div>
  
         <div class="col"></div>
        <div class="col-md-6 col-sm-12 rounded">
            <form class="was-validated" method="POST" action="/ClubDeportivo/Login">
        <div class="form-group ">
            <label for="usuario"> Usuario </label>
            <input name="txtUsuario" type="text" class="form-control" id="txtUsuario" 
                   placeholder="Escriba aquí su nombre de usuario"  required>
            <div class="valid-feedback">¡Válido!</div>
            <div class="invalid-feedback">Porfavor, complete el campo.</div>
          </div>
          
        <div class="form-group ">
            <label for="contraseña"> Contraseña </label>
            <input type="password" class="form-control" id="txtContrasena" 
                   name="txtContrasena" placeholder="Escriba aquí su contraseña" required>
            <div class="valid-feedback">¡Válido!</div>
            <div class="invalid-feedback">Porfavor, complete el campo.</div>
          </div> 
    
       <button type="submit"  class="btn btn-warning">
          Ingresar
        </button>
      </form>
            <c:if test="${not empty error}">
                <p> Error= ${error}</p>
            </c:if>
        </div>
         <div class="col"></div>
    </div>
         </div>
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
         </body>
</html>
 