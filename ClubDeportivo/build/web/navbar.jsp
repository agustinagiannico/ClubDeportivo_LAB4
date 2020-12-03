<%-- 
    Document   : navbar
    Created on : 24/10/2020, 04:49:19
    Author     : agus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <style>
            .icon {
  width: 30px;
  height: 30px;
}
        </style>
        
        <div class="conteiner">
          <nav class="navbar navbar-expand-lg navbar-dark navbar-dark bg-dark" >
            <a class="navbar-brand ml-2">
                <img src="img/logo.png" width="40px" height="40px" alt="logo" /> Club
            </a>
              <button class="navbar-toggler navbar-toggler-right" data-target="#menu" data-toggle="collapse" type="button" aria-controls="menu" aria-expanded="false" aria-label="Toggle Navegacion">
                <span class="navbar-toggler-icon"></span> 
              </button>
              <div class="collapse navbar-collapse text-center" id="menu">
                <ul class="navbar-nav mr-auto ml-auto">
                   <li class="nav-item active">
                     <a href="home.jsp" class="nav-link">Inicio</a>
                   </li>
                    <li class="nav-item">
                        <a href="portalNoticias.jsp" class="nav-link">Noticias</a>
                      </li>
                           <c:choose>
                               <c:when test="${! empty usuario}">
                        <li class="nav-item dropdown">
                              <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="desplegable" href="#">Administración</a>
                            <div class="dropdown-menu text-center">
                             <a href="listadoSocio.jsp" class="dropdown-item">ABMC Socio</a>
                             <a href="listadoActividad.jsp" class="dropdown-item">ABMC Actividades</a>
                             <a href="listadoNoticia.jsp" class="dropdown-item">Cargar publicaciones</a>                   
                            <a href="listadoInscripcion.jsp" class="dropdown-item">Inscripcion y pagos</a>
                            <a href="reportes.jsp" class="dropdown-item">Reportes</a>
                            </div>
                        </li>
                         <li class="nav-item navbar-nav mr-auto ml-auto mr-2">
                        <a href="SalirLogin" class="nav-link ">Salir</a>
                            </li>
                       </c:when>
                        
                       <c:otherwise>
                           <li class="nav-item navbar-nav mr-auto ml-auto mr-2">
                        <a href="Login" class="nav-link ">Login</a>
                            </li>
                       </c:otherwise>
                           </c:choose>
                   
                        
                         
                        
                </ul>
                <div class="d-flex flex-row justify-content-around">
                    <ul class="nav">
                        
                      <li class="nav-item mr-2"><a href="#"><img src="./img/instagram.svg" class="icon" /></a></li>
                      <li class="nav-item"><a href="#"><img src="./img/facebook.svg" class="icon" /></a></li>
                    </ul>
                  </div>
              </div>
            </nav>
          </div>
   