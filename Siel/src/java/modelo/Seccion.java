package modelo;

public class Seccion {

    private int idSeccion;
    private String descripcionSeccion;
    private int activo;

    public Seccion() {
    }

    public Seccion(int idSeccion, String descripcionSeccion, int activo) {
        this.idSeccion = idSeccion;
        this.descripcionSeccion = descripcionSeccion;
        this.activo = activo;
    }

    public int getIdSeccion() {
        return idSeccion;
    }

    public void setIdSeccion(int idSeccion) {
        this.idSeccion = idSeccion;
    }

    public String getDescripcionSeccion() {
        return descripcionSeccion;
    }

    public void setDescripcionSeccion(String descripcionSeccion) {
        this.descripcionSeccion = descripcionSeccion;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }
    
    //---------------------------------------------------------------métodos----------------------------------------------------------------------------------------
    
    
}
