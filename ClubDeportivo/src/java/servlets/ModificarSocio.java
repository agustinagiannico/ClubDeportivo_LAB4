
package servlets;

import gestores.GestorBD;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Socio;


@WebServlet(name = "ModificarSocio", urlPatterns = {"/ModificarSocio"})
public class ModificarSocio extends HttpServlet {

   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            GestorBD g = new GestorBD();	

            String idModificar = request.getParameter("id");
            int idSocio = Integer.parseInt(idModificar);


            Socio s = g.obtenerSocioPorID(idSocio);

            request.setAttribute("socio", s);

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/modificarSocio.jsp");
		rd.forward(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            GestorBD g = new GestorBD();
            
                int idSocio = Integer.parseInt(request.getParameter("txtIdSocio"));
		String nombre = request.getParameter("txtNombre");
		String apellido = request.getParameter("txtApellido");
		String dni = request.getParameter("txtDni");
                String telefono = request.getParameter("txtTelefono");
		
		g.modificarSocio(new Socio(idSocio, nombre, apellido, dni, telefono));

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoSocio.jsp");
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
