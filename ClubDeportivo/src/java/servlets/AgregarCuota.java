
package servlets;

import gestores.GestorBD;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Actividad;
import modelo.Cuota;
import modelo.Noticia;
import modelo.Socio;


@WebServlet(name = "AgregarCuota", urlPatterns = {"/AgregarCuota"})
public class AgregarCuota extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/agregarInscripcion.jsp");
		rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          GestorBD g = new GestorBD();

            int idSocio = Integer.parseInt(request.getParameter("cboSocio"));
            int idActividad = Integer.parseInt(request.getParameter("cboActividad"));
            
            Socio s = g.obtenerSocioPorID(idSocio);
            Actividad a = g.obtenerActividadPorID(idActividad);
          
            g.agregarCuota(new Cuota(s, a));

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoInscripcion.jsp");
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
