<%-- 
    Document   : inscripcion
    Created on : 18/11/2020, 11:16:47
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
        <title>Inscripción</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
             <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="mt-5 mb-5 display-4">Inscripción de un Socio a una actividad</h1>
                </div>
                <div class="col-md-3"></div>
                
                <div class="col-md-6">
            <form method="POST" action="/ClubDeportivo/AgregarCuota"> 
                
             <div class="form-group ">
            <label for="socio">Socio</label>
            <select class="custom-select" id="socio" name="cboSocio" required/>
              
            <c:forEach var="s" items="${lista.obtenerTodosLosSocios}">
		<option value="${s.idSocio}">${s.nombre} ${s.apellido}</option>
		</c:forEach>
            </select>

        </div>
            <div class="form-group ">
            <label for="actividad">Actividad</label>
            <select class="custom-select" id="actividad" name="cboActividad" required/>
              
            <c:forEach var="a" items="${lista.obtenerActividades}">
		<option value="${a.idActividad}">${a.actividad}</option>
		</c:forEach>
            </select>
            
        </div>
        <button type="submit"  class="btn btn-success">
          Inscribir
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
