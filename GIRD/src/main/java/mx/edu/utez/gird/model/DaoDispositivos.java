package mx.edu.utez.gird.model;

import mx.edu.utez.gird.utils.MysqlConector;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoDispositivos implements DaoRepository{
    @Override
    public List findAll() {
        List<Dispositivos> listaDispositivos = new ArrayList<>();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from dispositivos");
            ResultSet res = stmt.executeQuery();
            while (res.next()){
                Dispositivos dsps = new Dispositivos();
                dsps.setId(res.getInt("id"));
                dsps.setNumSerie(res.getString("numSerie"));
                dsps.setTipo(res.getString("tipo"));
                dsps.setMarca(res.getString("marca"));
                dsps.setModelo(res.getString("modelo"));
                dsps.setUnidades(res.getInt("unidades"));
                dsps.setCaracteristicas(res.getString("caracteristicas"));
                dsps.setEstatus(res.getString("estatus"));
                dsps.setObservaciones(res.getString("observaciones"));
                listaDispositivos.add(dsps);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaDispositivos;
    }

    @Override
    public Object findOne(int id) {
        Dispositivos dsps = new Dispositivos();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt =
                    connection.prepareStatement("select * from dispositivos where id=?");
            stmt.setInt(1,id);
            ResultSet res = stmt.executeQuery();
            if (res.next()) {
                dsps.setId(res.getInt("id"));
                dsps.setNumSerie(res.getString("numSerie"));
                dsps.setTipo(res.getString("tipo"));
                dsps.setMarca(res.getString("marca"));
                dsps.setModelo(res.getString("modelo"));
                dsps.setUnidades(res.getInt("unidades"));
                dsps.setCaracteristicas(res.getString("caracteristicas"));
                dsps.setEstatus(res.getString("estatus"));
                dsps.setObservaciones(res.getString("observaciones"));
            } else {
                dsps.setNumSerie("No existe el dsipositivo con el Num de Serie: "+id);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return dsps;
    }

    @Override
    public boolean update(int id, Object usrs) {
        Dispositivos disp = (Dispositivos) usrs;/*Esta linea nos especifica que estamos usando la clase de Usuarios,
        es como castear pero una clase, para saber que se está utilizando*/
        boolean resp = false;
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {

            PreparedStatement stmt = con.prepareStatement("update dispositivos set numSerie = ?, tipo = ?, marca = ?, " +
                    "modelo = ?, unidades = ?, caracteristicas = ?, estatus = ?, observaciones = ? where id = ?");
            stmt.setString(1,disp.getNumSerie());
            stmt.setString(2,disp.getTipo());
            stmt.setString(3,disp.getMarca());
            stmt.setString(4,disp.getModelo());
            stmt.setInt(5,disp.getUnidades());
            stmt.setString(6,disp.getCaracteristicas());
            stmt.setString(7,disp.getEstatus());
            stmt.setString(8,disp.getObservaciones());
            stmt.setInt(9,disp.getId());
            if(stmt.executeUpdate() > 0) resp = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resp;
    }
    @Override
    public boolean delete(int id) {
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt =
                    conection.prepareStatement(
                            "delete from dispositivos where id=?");
            stmt.setInt(1,id);
            int resultado = stmt.executeUpdate();
            if(resultado != 0){
                //Si se hizo
                return true;
            }else{ // no se hizo
                return false;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

   @Override
    public boolean insert(Object usrs){
        Dispositivos disp = (Dispositivos) usrs;/*Esta linea nos especifica que estamos usando la clase de Usuarios,
        es como castear pero una clase, para saber que se está utilizando*/
        boolean resultado = false;
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt =
                    conection.prepareStatement(
                            "insert into dispositivos (numSerie,tipo,marca,modelo,unidades,caracteristicas,estatus," +
                                    "observaciones) values (?,?,?,?,?,?,?,?)");
            stmt.setString(1,disp.getNumSerie());
            stmt.setString(2,disp.getTipo());
            stmt.setString(3,disp.getMarca());
            stmt.setString(4,disp.getModelo());
            stmt.setInt(5,disp.getUnidades());
            stmt.setString(6,disp.getCaracteristicas());
            stmt.setString(7,disp.getEstatus());
            stmt.setString(8,disp.getObservaciones());
            int res = stmt.executeUpdate();
            if(res>=1) resultado=true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }

}
