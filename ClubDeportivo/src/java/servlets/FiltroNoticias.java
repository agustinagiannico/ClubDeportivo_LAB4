
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
import modelo.Actividad;
import modelo.Noticia;


@WebServlet(name = "FiltroNoticias", urlPatterns = {"/FiltroNoticias"})
public class FiltroNoticias extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        GestorBD g = new GestorBD();
        String idFiltro = request.getParameter("id");
            int idActividad = Integer.parseInt(idFiltro);


            ArrayList<Noticia> n = g.filtrarPorActividad(idActividad);

		request.setAttribute("noticia", n);

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/portalNoticiasFiltro.jsp");
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
        processRequest(request, response);
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
