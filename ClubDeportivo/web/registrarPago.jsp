<%-- 
    Document   : pagos
    Created on : 15/11/2020, 00:30:53
    Author     : agus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        
        <title>Pagos</title>
    </head>
    <body> 
        <%@include file="navbar.jsp"%>
           <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="mt-5 mb-5 display-3">Pagos</h1>
                    <h1 class="display-5 mb-3">Registrar pago de: <br>
                        ${pago.nombre} ${pago.apellido}</h1>
                    
                </div>
                <div class="col-md-3"></div>
                 <div class="col-md-6 text-center">
        <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Actividad</th>
                <th scope="col">Socio</th>
     
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${cuota}">
             <tr>
                
		<td>${c.actividad.actividad}</td>
                <td>${c.actividad.precio}</td>

		<td><a class="btn btn-danger"href="/ClubDeportivo/EliminarCuota?id=${c.idCuota}">Desinscripción</a></td>
             </tr>
            
            </c:forEach>
 
	</table>
       
                 </div>
                 <div class="col-md-3"></div>
                  <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="was-validated" method="POST" action="/ClubDeportivo/RegistrarPago"> 
            
                  <input type="hidden" name="txtIdSocio" value="${pago.idSocio}">
                    <div class="form-group">
                    <label for="monto">Monto</label>
                   <input type="text" class="form-control disabled" id="txtMonto" name="txtMonto" value="${monto}" readonly />
                </div>
                <div class="form-group was-validated">
                    <label for="fecha">Fecha</label>
                    <input type="text" class="form-control" id="txtFecha" name="txtFecha" placeholder="Escriba aquí la fecha de pago" required/>
                 <small>Debe completar la fecha así: dd-mm-aaaa </small><br />
                    <div class="valid-feedback">¡Válido!</div>
                <div class="invalid-feedback">Porfavor, complete el campo.</div>
                </div>
                
                    <button type="submit"  class="btn btn-success">
                Registrar Pago
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
