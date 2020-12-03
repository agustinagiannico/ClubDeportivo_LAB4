
package modelo;


public class DtoSocioPagos {
    private String fecha;
    private float monto;

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }

    public DtoSocioPagos(String fecha, float monto) {
        this.fecha = fecha;
        this.monto = monto;
    }
    
}
