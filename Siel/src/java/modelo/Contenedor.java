package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import org.apache.log4j.Logger;

public class Contenedor {

    final static Logger LOGGER = Logger.getLogger(Contenedor.class);

    private int idContenedor;
    private String abreviacionContenedor;
    private String descripcionContenedor;
    private int activo;

    public Contenedor() {
    }

    public Contenedor(int idContenedor, String abreviacion, String descripcionContenedor, int activo) {
        this.idContenedor = idContenedor;
        this.abreviacionContenedor = abreviacion;
        this.descripcionContenedor = descripcionContenedor;
        this.activo = activo;
    }

    public String getAbreviacionContenedor() {
        return abreviacionContenedor;
    }

    public void setAbreviacionContenedor(String abreviacionContenedor) {
        this.abreviacionContenedor = abreviacionContenedor;
    }

    public void setIdContenedor(int idContenedor) {
        this.idContenedor = idContenedor;
    }

    public int getIdContenedor() {
        return idContenedor;
    }

    public String getDescripcionContenedor() {
        return descripcionContenedor;
    }

    public void setDescripcionContenedor(String descripcionContenedor) {
        this.descripcionContenedor = descripcionContenedor;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }

    //-------------------------------------------------------Métodos modelo-------------------------------------------------------------------------------------------------
    public ArrayList<Contenedor> mostrarListaContenedor() {

        Contenedor contenedor = null;
        ArrayList<Contenedor> contenedores = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn = new conexion.Conexion().conectarMySQL();

        String sql = "SELECT \n"
                + "    cnt_id, cnt_abreviatura, cnt_descripcion, cnt_activo\n"
                + "FROM\n"
                + "    siel.cnt_contenedores\n"
                + "WHERE\n"
                + "    cnt_activo = 1;";

        try {

            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                
                contenedor = new Contenedor(idContenedor, abreviacionContenedor, descripcionContenedor, activo);
                contenedor.idContenedor = rs.getInt("cnt_id");
                contenedor.abreviacionContenedor = rs.getString("cnt_abreviatura");
                contenedor.descripcionContenedor = rs.getString("cnt_descripcion");
                contenedor.activo = rs.getInt("cnt_activo");
                
                contenedores.add(contenedor);
            }

 

        } catch (SQLException e) {
            System.out.println(e);
        }

        return contenedores;
    }
    
    public Contenedor buscarContenedor(int id) {

        Contenedor contenedor = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn = new conexion.Conexion().conectarMySQL();

        String sql = "SELECT \n"
                + "    cnt_id, cnt_abreviatura, cnt_descripcion, cnt_activo\n"
                + "FROM\n"
                + "    siel.cnt_contenedores\n"
                + "WHERE\n"
                + "    cnt_id = ? and cnt_activo = 1;";

        try {

            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                
                contenedor = new Contenedor(idContenedor, abreviacionContenedor, descripcionContenedor, activo);
                contenedor.idContenedor = rs.getInt("cnt_id");
                contenedor.abreviacionContenedor = rs.getString("cnt_abreviatura");
                contenedor.descripcionContenedor = rs.getString("cnt_descripcion");
                contenedor.activo = rs.getInt("cnt_activo");

            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return contenedor;
    }

}
