
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

/**
 *
 * @author agus
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

   
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        GestorBD g = new GestorBD();
        String usuario = request.getParameter("txtUsuario");
        String contrasena = request.getParameter("txtContrasena");
        
        if(g.existeUsuario(usuario, contrasena)){
            request.getSession().setAttribute("usuario", usuario);
            RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
            rd.forward(request, response);
        }
        
        else{
        request.setAttribute("error", "Verifique los campos, usuario o contraseña incorrecta");
        RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);
        }
        
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
