
package modelo;


public class Cuota {
    private int idCuota;
    private Socio socio;
    private Actividad actividad;

    public int getIdCuota() {
        return idCuota;
    }

    public void setIdCuota(int idCuota) {
        this.idCuota = idCuota;
    }

    public Socio getSocio() {
        return socio;
    }

    public void setSocio(Socio socio) {
        this.socio = socio;
    }

    public Actividad getActividad() {
        return actividad;
    }

    public void setActividad(Actividad actividad) {
        this.actividad = actividad;
    }

    public Cuota(int idCuota, Socio socio, Actividad actividad) {
        this.idCuota = idCuota;
        this.socio = socio;
        this.actividad = actividad;
    }

    public Cuota(Socio socio, Actividad actividad) {
        this.socio = socio;
        this.actividad = actividad;
    }

    
}
