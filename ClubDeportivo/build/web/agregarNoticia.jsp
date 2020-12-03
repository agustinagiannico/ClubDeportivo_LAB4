

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="lista" scope="request" class="gestores.GestorBD"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Agregar Noticia</title>
    </head>
    <body>
          <%@include file="navbar.jsp"%>
             <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="mt-5 mb-5 display-4">Agregar Noticia</h1>
                </div>
                <div class="col-md-3"></div>
                
                <div class="col-md-6">
            <form class="was-validated" method="POST" action="/ClubDeportivo/AgregarNoticia"> 
               <div class="form-group was-validated ">
                    <label for="titulo">Titulo</label>
                    <input type="text" class="form-control" id="txtTitulo"  name="txtTitulo" 
                           placeholder="Escriba aquí un titulo" required/>
                   <div class="valid-feedback">¡Válido!</div>
                   <div class="invalid-feedback">Porfavor, complete el campo.</div>
                </div>
		<div class="form-group ">
                    <label>Noticia</label><br />
                    <textarea class="form-control" name="txtNoticia" rows="5" cols="40" required> </textarea><br />
                    <small>Debe completar este campo con la noticia. Máximo 200 carac.</small><br />
               
                </div>
             <div class="form-group was-validated">
              <label for="fecha">Fecha</label>
              <input type="text" class="form-control" id="txtFecha" name="txtFecha"
                     placeholder="Escriba aquí la fecha de publicación" required/>
              <small>Debe completar la fecha así: dd-mm-aaaa </small><br />
              <div class="valid-feedback">¡Válido!</div>
              <div class="invalid-feedback">Porfavor, complete el campo.</div>
            </div>
                    
            
            <div class="form-group was-validated ">
            <label for="actividad">Actividad</label>
            <select class="custom-select" id="actividad" name="cboActividad" required/>
              
            <c:forEach var="a" items="${lista.obtenerActividades}">
		<option value="${a.idActividad}">${a.actividad}</option>
		</c:forEach>
            </select>
            
        </div>
        <button type="submit"  class="btn btn-success">
          Agregar
        </button>
      
    </form>
                </div>
            </div>
             </div>
             
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
    </body>
</html>
