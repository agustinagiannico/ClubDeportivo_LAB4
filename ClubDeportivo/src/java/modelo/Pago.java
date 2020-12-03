
package modelo;

public class Pago {
    private int idPago;
    private Socio socio;
    private String fecha;
    private float monto;

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public Socio getSocio() {
        return socio;
    }

    public void setSocio(Socio socio) {
        this.socio = socio;
    }

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

    public Pago(int idPago, Socio socio, String fecha, float monto) {
        this.idPago = idPago;
        this.socio = socio;
        this.fecha = fecha;
        this.monto = monto;
    }

    public Pago(Socio socio, String fecha, float monto) {
        this.socio = socio;
        this.fecha = fecha;
        this.monto = monto;
    }

    
}
