
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
import modelo.Cuota;
import modelo.Pago;
import modelo.Socio;



@WebServlet(name = "RegistrarPago", urlPatterns = {"/RegistrarPago"})
public class RegistrarPago extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        GestorBD g = new GestorBD();	

            String idModificar = request.getParameter("id");
            int idSocio = Integer.parseInt(idModificar);

            
            Socio s = g.obtenerSocioPorID(idSocio);
            ArrayList<Cuota> c = g.obtenerCuotaPorID(idSocio);
            
            float monto = g.obtenerMontoTotalSocio(s.getIdSocio());
            
		request.setAttribute("pago", s);
                request.setAttribute("cuota" , c);
                request.setAttribute("monto", monto);
                
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/registrarPago.jsp");
		rd.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
         GestorBD g = new GestorBD();
        
        int idSocio = Integer.parseInt(request.getParameter("txtIdSocio"));
        String fecha = request.getParameter("txtFecha");
        float monto = Float.parseFloat(request.getParameter("txtMonto"));
	
        Socio s = g.obtenerSocioPorID(idSocio);
        
	g.agregarPago(new Pago( s, fecha, monto));

	RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoInscripcion.jsp");
	rd.forward(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
