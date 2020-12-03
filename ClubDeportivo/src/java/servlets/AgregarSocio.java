/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Socio;
import gestores.GestorBD;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author agus
 */
@WebServlet(name = "AgregarSocio", urlPatterns = {"/AgregarSocio"})
public class AgregarSocio extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
		
          
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/agregarSocio.jsp");
            rd.forward(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            GestorBD g = new GestorBD();

		
		String nombre = request.getParameter("txtNombre");
		String apellido  = request.getParameter("txtApellido");
		String dni = request.getParameter("txtDni");
                String telefono = request.getParameter("txtTelefono");
                
                
		g.agregarSocio(new Socio(nombre, apellido, dni, telefono));

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listadoSocio.jsp");
		rd.forward(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
