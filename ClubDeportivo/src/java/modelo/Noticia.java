
package modelo;


public class Noticia {
   private int idNoticia;
   private String titulo;
   private String noticia;
   private String fecha;
   private Actividad actividad;

    public int getIdNoticia() {
        return idNoticia;
    }

    public void setIdNoticia(int idNoticia) {
        this.idNoticia = idNoticia;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getNoticia() {
        return noticia;
    }

    public void setNoticia(String noticia) {
        this.noticia = noticia;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Actividad getActividad() {
        return actividad;
    }

    public void setActividad(Actividad actividad) {
        this.actividad = actividad;
    }

    public Noticia(int idNoticia, String titulo, String noticia, String fecha, Actividad actividad) {
        this.idNoticia = idNoticia;
        this.titulo = titulo;
        this.noticia = noticia;
        this.fecha = fecha;
        this.actividad = actividad;
    }

    public Noticia(String titulo, String noticia, String fecha, Actividad actividad) {
        this.titulo = titulo;
        this.noticia = noticia;
        this.fecha = fecha;
        this.actividad = actividad;
    }

   
}
