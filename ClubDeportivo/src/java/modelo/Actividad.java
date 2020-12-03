
package modelo;


public class Actividad {
    private int idActividad;
    private String actividad;
    private float precio;

    public Actividad() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getIdActividad() {
        return idActividad;
    }

    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public Actividad(String actividad, float precio) {
        this.actividad = actividad;
        this.precio = precio;
    }

    public Actividad(int idActividad, String actividad, float precio) {
        this.idActividad = idActividad;
        this.actividad = actividad;
        this.precio = precio;
    }

    @Override
    public String toString() {
        return actividad;
    }
    
    
}
