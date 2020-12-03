<%-- 
    Document   : portalNoticias
    Created on : 17/11/2020, 05:10:20
    Author     : agus
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="lista" scope="request" class="gestores.GestorBD"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
      
        <title>Portal Noticias</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>
     <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="mt-5 mb-5 display-3">Portal de Noticias</h1>
                </div>
                     
                <div class="col-md-8 ">
    <c:forEach var="n" items="${noticia}">
      <div class="card mb-2">
    
        <div class="card-header bg-warning">
            ${n.fecha} - ${n.actividad.actividad}
        </div>
        <div class="card-body">
            <h5 class="card-title">${n.titulo}</h5>
            <p class="card-text">${n.noticia}</p>
            
        </div>
      </div>
             </c:forEach>
                </div>
                <div class="col-md-4 ">
                    
         <div class="card mb-2">
    
            <div class="card-header bg-info text-white">
            Categorías
                </div>
        <div class="card-body">
           <div class="nav flex-column nav-pills">
            <c:forEach var="a" items="${lista.obtenerActividades}">
                <li>
            <a class="nav-link" href="/ClubDeportivo/FiltroNoticias?id=${a.idActividad}">${a.actividad}</a>
                </li>
                </c:forEach>
            </div>
        </div>
      </div>
            
                </div>
            </div>
     </div>
    </body>
</html>
