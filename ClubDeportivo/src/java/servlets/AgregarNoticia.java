
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


@WebServlet(name = "AgregarNoticia", urlPatterns = {"/AgregarNoticia"})
public class AgregarNoticia extends HttpServlet {

    
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
          
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/agregarNoticia.jsp");
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
      
            GestorBD g = new GestorBD();

            String titulo = request.getParameter("txtTitulo");
            String noticia = request.getParameter("txtNoticia");
            String fecha = request.getParameter("txtFecha");
            int idActividad = Integer.parseInt(request.getParameter("cboActividad"));
            
            Actividad a = g.obtenerActividadPorID(idActividad);
          
            g.agregarNoticia(new Noticia(titulo, noticia, fecha, a));

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoNoticia.jsp");
		rd.forward(request, response);
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
