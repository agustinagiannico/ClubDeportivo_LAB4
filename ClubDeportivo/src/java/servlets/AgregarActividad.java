
package servlets;

import gestores.GestorBD;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Actividad;

/**
 *
 * @author agus
 */
@WebServlet(name = "AgregarActividad", urlPatterns = {"/AgregarActividad"})
public class AgregarActividad extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/agregarActividad.jsp");
            rd.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       GestorBD g = new GestorBD();

		
		String actividad = request.getParameter("txtActividad");
		float precio = Float.parseFloat(request.getParameter("txtPrecio"));
		
		
		g.agregarActividad(new Actividad(actividad, precio));

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoActividad.jsp");
		rd.forward(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
