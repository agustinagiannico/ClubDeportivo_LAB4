
package servlets;

import gestores.GestorBD;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DtoSocioPagos;


@WebServlet(name = "DTOSocioPagos", urlPatterns = {"/DTOSocioPagos"})
public class DTOSocioPagos extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String idComparar = (String) request.getParameter("cboSocio");
            int idSocio = Integer.parseInt(idComparar);

            GestorBD g = new GestorBD();
            
            ArrayList<DtoSocioPagos> lista = g.ListadoSociosPagos(idSocio);
            
            request.setAttribute("pago", lista);
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/reportes.jsp");
            rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
