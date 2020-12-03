
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


@WebServlet(name = "ModificarActividad", urlPatterns = {"/ModificarActividad"})
public class ModificarActividad extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
            GestorBD g = new GestorBD();	

            String idModificar = request.getParameter("id");
            int idActividad = Integer.parseInt(idModificar);


            Actividad a = g.obtenerActividadPorID(idActividad);

		request.setAttribute("actividad", a);

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/modificarActividad.jsp");
		rd.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        GestorBD g = new GestorBD();
        
        int idActividad = Integer.parseInt(request.getParameter("txtIdActividad"));
        String actividad = request.getParameter("txtActividad");
        float precio = Float.parseFloat(request.getParameter("txtPrecio"));
		
	g.modificarActividad(new Actividad(idActividad, actividad, precio));

	RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoActividad.jsp");
	rd.forward(request, response);

    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
