<%-- 
    Document   : modificarActividad
    Created on : 16/11/2020, 01:08:57
    Author     : agus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        
        <title>Modificar Actividad</title>
    </head>
    <body>
         <%@include file="navbar.jsp"%>
             <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="mt-5 mb-5 display-4">Modificar Actividad</h1>
                </div>
                <div class="col-md-3"></div>
                
                <div class="col-md-6">
        <form method="POST" action="/ClubDeportivo/ModificarActividad"> 
            <input type="hidden" name="txtIdActividad" value="${actividad.idActividad}">
            <div class="form-group ">
                <label for="actividad">Nombre de Actividad</label>
                <input type="text" class="form-control form-control-sm" id="txtActividad" name="txtActividad" value="${actividad.actividad}"
                           placeholder="Escriba aquí su actividad" required/>
                <div class="valid-feedback">¡Válido!</div>
                <div class="invalid-feedback">Porfavor, complete el campo.</div>
            </div>
                           
            <div class="form-group ">
                <label for="dni">Precio</label>
                <input type="text" class="form-control form-control-sm" id="txtPrecio" name="txtPrecio" value="${actividad.precio}"
                    placeholder="Escriba aquí el precio" required/>
                <div class="valid-feedback">¡Válido!</div>
                <div class="invalid-feedback">Porfavor, complete el campo.</div>
            </div>
            <button type="submit"  class="btn btn-warning">
                Modificar
            </button>
      
        </form>
                </div>        
            <div class="col-md-3"></div>
            </div>
             </div>
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
       
    </body>
</html>
