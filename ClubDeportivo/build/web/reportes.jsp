

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean id="lista" scope="request" class="gestores.GestorBD"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">   
        <title>Reportes</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
     <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="mt-5 mb-5 display-3 text-center">Reportes</h1>
                </div>
  
                <div class="col-md-6">
                    <div class="card mb-2">
    
                    <div class="card-header bg-warning">
                    Reporte 1
                    </div>
                <div class="card-body">
             <h3 class="display-5">Monto total de ganancias</h3>
                    <h4 >$ ${lista.gananciaTotal}</h4>
                </div>
            </div>
        </div>

               
                
                <div class="col-md-6">
                   
                    <div class="card mb-2">
    
                    <div class="card-header bg-warning ">
                    Reporte 3
                    </div>
                <div class="card-body">
            <h3 class=" display-5 mb-3">Listado de socios inscriptos a una actividad en particular</h3>
                    <form class="form-inline mb-4" method="GET" action="/ClubDeportivo/DtoSocioActividad"> 
                        <div class="form-group ">
                        
                            <select class="custom-select" id="actividad" name="cboActividad" required/>
              
                            <c:forEach var="a" items="${lista.obtenerActividades}">
                            <option value="${a.idActividad}">${a.actividad}</option>
                            </c:forEach>
              
                            </select>
                        </div>
                        
                    <button type="submit" class="ml-2 btn btn-success">
                        Consultar
                       </button>
                    </form>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Nombre Completo</th>
                                <th scope="col">DNI</th>
                                <th scope="col">Teléfono</th>
                            </tr>
                        </thead>
                        <tbody>
                          
                            <c:forEach var="s" items="${socio}">
                                <tr>
                            <td>${s.nombreCompleto}</td>
                            <td>${s.dni}</td> 
                            <td>${s.telefono}</td>
                                </tr>
                            </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
            </div>
      
                </div>
                 <div class="col-md-6">
                    <div class="card mb-2">
    
                    <div class="card-header bg-warning ">
                    Reporte 2
                    </div>
                <div class="card-body">
             <h3 class="display-5 mb-3">Nombre y total de ganancias de las 3 actividades con mayor ganancia total</h3>
                
                  <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Actividad</th>
                                <th scope="col">Total de Ganancias</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach var="v" items="${lista.totalTop3Actividades()}">
                                <tr>
                            <td>${v.nombre}</td>
                            <td>${v.total}</td> 
                            
                                </tr>
                            </c:forEach>
                            
                        </tbody>
                    </table>
                
                </div>
            </div>
                </div>
                <div class="col-md-6">
                    
                    <div class="card mb-2">
    
                    <div class="card-header bg-warning">
                    Reporte 4
                    </div>
                <div class="card-body">
             <h3 class="display-5 mb-3">Seleccionar un socio y ver un listado de sus cuotas pagas</h3>
                    
                    <form class="form-inline mb-4" method="GET" action="/ClubDeportivo/DTOSocioPagos"> 
                        <div class="form-group ">
                        
                            <select class="custom-select" id="socio" name="cboSocio" required/>
              
                            <c:forEach var="s" items="${lista.obtenerTodosLosSocios}">
                            <option value="${s.idSocio}">${s.nombre} ${s.apellido}</option>
                            </c:forEach>
              
                            </select>
                        </div>
                        
                    <button type="submit" class=" ml-2 btn btn-success">
                        Consultar
                       </button>
                    </form>
                    <table class=" mt-3 table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Fecha</th>
                                <th scope="col">Monto</th>
                          </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${pago}">
                                <tr>
                            <td>${p.fecha}</td>
                            <td>${p.monto}</td> 
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
                   
                </div>
                
                </div>
            </div>   
     </div>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
