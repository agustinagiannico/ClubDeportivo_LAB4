<%-- 
    Document   : ABMCSocio
    Created on : 27/10/2020, 01:39:23
    Author     : agus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h1 class="mt-5 mb-5 display-4">Alta Socio</h1>
                </div>
                <div class="col-md-3"></div>
                
                <div class="col-md-6">
		<form class="was-validated" method="POST" action="/ClubDeportivo/AgregarSocio" class="form-group"> 
		
		<div class="form-group was-validated">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"  placeholder="Escriba aquí el nombre" required/>
              <div class="valid-feedback">¡Válido!</div>
              <div class="invalid-feedback">Porfavor, complete el campo.</div>
                  </div>
		<div class="form-group ">
                    <label for="apellido">Apellido</label>
                    <input type="text" class="form-control" id="txtApellido" name="txtApellido" placeholder="Escriba aquí el apellido" required/>
              <div class="valid-feedback">¡Válido!</div>
              <div class="invalid-feedback">Porfavor, complete el campo.</div>
                  </div>
             <div class="form-group was-validated ">
              <label for="dni">DNI</label>
              <input type="text" class="form-control" id="txtDni" name="txtDni" placeholder="Escriba aquí el dni" required/>
              <div class="valid-feedback">¡Válido!</div>
              <div class="invalid-feedback">Porfavor, complete el campo.</div>
            </div>
                    
            <div class="form-group was-validated ">
              <label for="telefono">Telefono</label>
              <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Escriba aquí el telefono" required/>
              <div class="valid-feedback">¡Válido!</div>
              <div class="invalid-feedback">Porfavor, complete el campo.</div>
            </div>	

       <button type="submit"  class="btn btn-success">
          Agregar
        </button>
      </form>
        </div>
         <div class="col-md-3"></div>
            </div>
       </div>
    </body>
	

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
