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
            PreparedStatement stmt = connection.prepareStatement("select * from prestamos");
            ResultSet res = stmt.executeQuery();
            while (res.next()){
                Prestamos pres = new Prestamos();
                pres.setId(res.getInt("id"));
                pres.setNomAl(res.getString("nomAl"));
                pres.setApellAl(res.getString("apellAl"));
                pres.setMatriAl(res.getString("matriAl"));
                pres.setEntregaDisp(res.getTimestamp("entregaDisp"));
                pres.setDevolucionDisp(res.getTimestamp("devolucionDisp"));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listaPrestamos;
    }

    @Override
    public Object findOne(String matriAl) {
        Prestamos pres = new Prestamos();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt =
                    connection.prepareStatement("select * from prestamos where matriAl=?");
            stmt.setString(1,matriAl);
            ResultSet res = stmt.executeQuery();
            if (res.next()) {
                pres.setId(res.getInt("id"));
                pres.setNomAl(res.getString("nomAl"));
                pres.setApellAl(res.getString("apellAl"));
                pres.setMatriAl(res.getString("matriAl"));
                pres.setEntregaDisp(res.getTimestamp("entregaDisp"));
                pres.setDevolucionDisp(res.getTimestamp("devolucionDisp"));
            } else {
                pres.setMatriAl("No existe el dsipositivo con el Num de Serie: "+matriAl);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return pres;
    }

    @Override
    public boolean update(int id, Prestamos pres) {
        boolean resp = false;
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {
            PreparedStatement stmt = con.prepareStatement("update prestamos set nomAl = ?, apellAl = ?, matriAl = ?," +
                    "entregaDisp = now(), devolucionDisp = now() where id = ?");
            stmt.setString(1,pres.getNomAl());
            stmt.setString(2, pres.getApellAl());
            stmt.setString(3, pres.getMatriAl());
            stmt.setTimestamp(4,pres.getEntregaDisp());
            stmt.setTimestamp(5, pres.getDevolucionDisp());
            stmt.setInt(6, pres.getId());
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
    public boolean insert(Prestamos pres){
        boolean resultado = false;
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt = conection.prepareStatement(
                    "insert into prestamos (nomAl, apellAl, matriAl,entregaDisp, devolucionDisp) " +
                            "values (?,?,?,now(),now())");
            stmt.setString(1, pres.getNomAl());
            stmt.setString(2, pres.getApellAl());
            stmt.setString(3, pres.getMatriAl());
            stmt.setTimestamp(4, pres.getEntregaDisp());
            stmt.setTimestamp(5, pres.getDevolucionDisp());
            int res = stmt.executeUpdate();
            if(res>=1) resultado=true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }

}
