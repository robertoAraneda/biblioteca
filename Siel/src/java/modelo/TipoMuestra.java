package modelo;

public class TipoMuestra {

    private int idTipoMuestra;
    private String descripcionTipoMuestra;
    private int activo;

    public TipoMuestra() {
    }

    public TipoMuestra(int idTipoMuestra, String descripcionTipoMuestra, int activo) {
        this.idTipoMuestra = idTipoMuestra;
        this.descripcionTipoMuestra = descripcionTipoMuestra;
        this.activo = activo;
    }

    public int getIdTipoMuestra() {
        return idTipoMuestra;
    }

    public void setIdTipoMuestra(int idTipoMuestra) {
        this.idTipoMuestra = idTipoMuestra;
    }

    public String getDescripcionTipoMuestra() {
        return descripcionTipoMuestra;
    }

    public void setDescripcionTipoMuestra(String descripcionTipoMuestra) {
        this.descripcionTipoMuestra = descripcionTipoMuestra;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }
    
    //----------------------------------------------------------------métodos------------------------------------------------------------------------------------------
    
    
}
