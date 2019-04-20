package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AreaTrabajo {

    private int idAreaTrabajo;
    private String descripcionAreaTrabajo;
    private Seccion seccion;
    private int activo;

    public AreaTrabajo() {
    }

    public AreaTrabajo(int idAreaTrabajo, String descripcionAreaTrabajo, Seccion seccion, int activo) {
        this.idAreaTrabajo = idAreaTrabajo;
        this.descripcionAreaTrabajo = descripcionAreaTrabajo;
        this.seccion = seccion;
        this.activo = activo;
    }

    public int getIdAreaTrabajo() {
        return idAreaTrabajo;
    }

    public void setIdAreaTrabajo(int idAreaTrabajo) {
        this.idAreaTrabajo = idAreaTrabajo;
    }

    public String getDescripcionAreaTrabajo() {
        return descripcionAreaTrabajo;
    }

    public void setDescripcionAreaTrabajo(String descripcionAreaTrabajo) {
        this.descripcionAreaTrabajo = descripcionAreaTrabajo;
    }

    public Seccion getSeccion() {
        return seccion;
    }

    public void setSeccion(Seccion seccion) {
        this.seccion = seccion;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }
    //---------------------------------------------métodos------------------------------------------------------------------------------------------------------------

    public ArrayList<AreaTrabajo> mostrarListaAreaTrabajor() {

        AreaTrabajo areaTrabajo = null;
        ArrayList<AreaTrabajo> areasTrabajo = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn = new conexion.Conexion().conectarMySQL();

        String sql = "SELECT \n"
                + "    atr_id,\n"
                + "    atr_descripcion,\n"
                + "    atr_sec_id,\n"
                + "    atr_activo,\n"
                + "    sec_id,\n"
                + "    sec_descripcion,\n"
                + "    sec_activo\n"
                + "FROM\n"
                + "    siel.atr_area_trabajo\n"
                + "        LEFT JOIN\n"
                + "    sec_seccion ON atr_sec_id = sec_id\n"
                + "WHERE\n"
                + "    atr_activo = 1;";

        try {

            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Seccion seccion = new Seccion(rs.getInt("sec_id"), rs.getString("sec_descripcion"), rs.getInt("sec_activo"));
                areaTrabajo = new AreaTrabajo(idAreaTrabajo, descripcionAreaTrabajo, seccion, activo);
                areaTrabajo.idAreaTrabajo = rs.getInt("atr_id");
                areaTrabajo.descripcionAreaTrabajo = rs.getString("atr_descripcion");
                areaTrabajo.activo = rs.getInt("atr_activo");

                areasTrabajo.add(areaTrabajo);

            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return areasTrabajo;
    }

    public AreaTrabajo buscarContenedor(int id) {


        AreaTrabajo areaTrabajo = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn = new conexion.Conexion().conectarMySQL();

        String sql = "SELECT \n"
                + "    atr_id,\n"
                + "    atr_descripcion,\n"
                + "    atr_sec_id,\n"
                + "    atr_activo,\n"
                + "    sec_id,\n"
                + "    sec_descripcion,\n"
                + "    sec_activo\n"
                + "FROM\n"
                + "    siel.atr_area_trabajo\n"
                + "        LEFT JOIN\n"
                + "    sec_seccion ON atr_sec_id = sec_id\n"
                + "WHERE\n"
                + "    atr_activo = 1 and atr_id = ?;";

        try {

            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {

                Seccion seccion = new Seccion(rs.getInt("sec_id"), rs.getString("sec_descripcion"), rs.getInt("sec_activo"));
                areaTrabajo = new AreaTrabajo(idAreaTrabajo, descripcionAreaTrabajo, seccion, activo);
                areaTrabajo.idAreaTrabajo = rs.getInt("atr_id");
                areaTrabajo.descripcionAreaTrabajo = rs.getString("atr_descripcion");
                areaTrabajo.activo = rs.getInt("atr_activo");

            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return areaTrabajo;
    }

}
