package mx.edu.utez.gird.model;

import mx.edu.utez.gird.utils.MysqlConector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoPrestamos implements DaoRepository{
    public List findAll() {
        List<Prestamos> listaPrestamos = new ArrayList<>();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from prestamos join dispositivos on prestamos.id_dispositivos = dispositivos.id");
            ResultSet res = stmt.executeQuery();
            while (res.next()){
                Prestamos pres = new Prestamos();
                pres.setId(res.getInt("id"));
                pres.setNomAl(res.getString("nomAl"));
                pres.setApellAl(res.getString("apellAl"));
                pres.setMatriAl(res.getString("matriAl"));
                pres.setEntregaDisp(res.getTimestamp("entregaDisp"));
                pres.setDevolucionDisp(res.getTimestamp("devolucionDisp"));
                pres.setEstatus(res.getInt("estatus"));
                Dispositivos disp = new Dispositivos();
                disp.setTipo(res.getString("tipo"));
                disp.setMarca(res.getString("marca"));
                disp.setModelo(res.getString("modelo"));
                disp.setEstatus(res.getString("estatus"));
                disp.setObservaciones(res.getString("observaciones"));
                pres.setDispositivos(disp);
                listaPrestamos.add(pres);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listaPrestamos;
    }


    @Override
    public Object findOne(int id) {
        Prestamos pres = new Prestamos();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from prestamos where id=? join dispositivos on prestamos.id_dispositivos = dispositivos.id");
            stmt.setInt(1,id);
            ResultSet res = stmt.executeQuery();
            if (res.next()) {
                pres.setId(res.getInt("id"));
                pres.setNomAl(res.getString("nomAl"));
                pres.setApellAl(res.getString("apellAl"));
                pres.setMatriAl(res.getString("matriAl"));
                pres.setEntregaDisp(res.getTimestamp("entregaDisp"));
                pres.setDevolucionDisp(res.getTimestamp("devolucionDisp"));
                Dispositivos disp = new Dispositivos();
                disp.setNumSerie(res.getString("numSerie"));
                disp.setModelo(res.getString("modelo"));
                disp.setEstatus(res.getString("estatus"));
                disp.setObservaciones(res.getString("observaciones"));
                pres.setDispositivos(disp);
            } else {
                pres.setNomAl("No existe el dsipositivo con el Num de Serie: "+ id);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return pres;
    }

    @Override
    public boolean update(int id, Object usrs) {
        Prestamos pres = (Prestamos) usrs;/*Esta linea nos especifica que estamos usando la clase de Usuarios,
        es como castear pero una clase, para saber que se está utilizando*/
        boolean resp = false;
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {
            PreparedStatement stmt = con.prepareStatement("update prestamos set devolucionDisp = now(), estatus = ?  where id = ?");
            stmt.setBoolean(1,false);
            stmt.setInt(2, pres.getId());
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
            PreparedStatement stmt = conection.prepareStatement("delete from prestamos where id=?");
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
        Prestamos pres = (Prestamos) usrs;/*Esta linea nos especifica que estamos usando la clase de Usuarios,
        es como castear pero una clase, para saber que se está utilizando*/
        boolean resultado = false;
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt = conection.prepareStatement(
                    "insert into prestamos (nomAl, apellAl, matriAl,entregaDisp, devolucionDisp, estatus, id_dispositivos) " +
                            "values (?,?,?,now(),null,?,?)");
            stmt.setString(1, pres.getNomAl());
            stmt.setString(2, pres.getApellAl());
            stmt.setString(3, pres.getMatriAl());
            stmt.setInt(4,pres.getEstatus());
            stmt.setInt(5,pres.getDispositivos().getId());
            int res = stmt.executeUpdate();
            if(res>=1) resultado=true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }

    public boolean updatePrestamoStatus(int prestamoId) {
        boolean resp = false;
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {
            PreparedStatement stmt = con.prepareStatement("UPDATE prestamos SET devolucionDisp = now(), estatus = ? WHERE id = ?");
            stmt.setBoolean(1, false);
            stmt.setInt(2, prestamoId);
            if (stmt.executeUpdate() > 0) {
                resp = true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resp;
    }


}
