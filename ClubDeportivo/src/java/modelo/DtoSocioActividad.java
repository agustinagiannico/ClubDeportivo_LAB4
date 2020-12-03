
package modelo;


public class DtoSocioActividad {
    private String nombreCompleto;
    private String dni;
    private String telefono;

    public String getNombreCompleto() { 
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public DtoSocioActividad(String nombreCompleto, String dni, String telefono) {
        this.nombreCompleto = nombreCompleto;
        this.dni = dni;
        this.telefono = telefono;
    }
    
}
