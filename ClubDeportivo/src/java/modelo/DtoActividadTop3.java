
package modelo;


public class DtoActividadTop3 {
   private String nombre;
   private float total;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public DtoActividadTop3(String nombre, float total) {
        this.nombre = nombre;
        this.total = total;
    }
   
   
}
