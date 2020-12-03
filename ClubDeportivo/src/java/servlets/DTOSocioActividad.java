
package servlets;

import gestores.GestorBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DtoSocioActividad;


@WebServlet(name = "DtoSocioActividad", urlPatterns = {"/DtoSocioActividad"})
public class DTOSocioActividad extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String idComparar = (String) request.getParameter("cboActividad");
            int idActividad = Integer.parseInt(idComparar);

            GestorBD g = new GestorBD();
            ArrayList<DtoSocioActividad> lista = g.ListadoSociosActividad(idActividad);
            
            
            request.setAttribute("socio", lista);
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/reportes.jsp");
            rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
