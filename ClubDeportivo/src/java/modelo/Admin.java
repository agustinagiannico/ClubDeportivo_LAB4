
package modelo;

public class Admin {
   private int idAdmin;
   private String usuario;
   private String contraseña;

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public Admin(int idAdmin, String usuario, String contraseña) {
        this.idAdmin = idAdmin;
        this.usuario = usuario;
        this.contraseña = contraseña;
    }
   
}
