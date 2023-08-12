package mx.edu.utez.gird.model;

import mx.edu.utez.gird.utils.MysqlConector;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class DaoUsuarios implements DaoRepository{
    @Override
    public List findAll() {
        List<Usuarios> listaUsuarios = new ArrayList<>();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from usuarios");
            ResultSet res = stmt.executeQuery();
            while (res.next()){
                Usuarios usrs = new Usuarios();
                usrs.setId(res.getInt("id"));
                usrs.setNombre(res.getString("nombre"));
                usrs.setApellido(res.getString("apellido"));
                usrs.setEmail(res.getString("email"));
                usrs.setContra(res.getString("contra"));
                usrs.setTipoUsr(res.getBoolean("tipoUsr"));
                listaUsuarios.add(usrs);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuarios;
    }

    @Override
    public Object findOne(int id) {
        Usuarios usrs = new Usuarios();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt =
                    connection.prepareStatement("select * from usuarios where id=?");
            stmt.setInt(1,id);
            ResultSet res = stmt.executeQuery();
            if (res.next()) {
                usrs.setNombre(res.getString("nombre"));
                usrs.setApellido(res.getString("apellido"));
                usrs.setApellido(res.getString("email"));
                usrs.setApellido(res.getString("contra"));
                usrs.setTipoUsr(res.getBoolean("tipoUsr"));
            } else {
                usrs.setNombre("No existe el usuario con el id: "+id);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return usrs;
    }



    @Override
    public boolean update(int id, Object usrs) {

        boolean res = false;
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {
            PreparedStatement stmt =
                    con.prepareStatement("update usuarios set nombre = ?, apellido = ?, tipoUsr = ? where id = ?");
            stmt.setString(1,usrs.getNombre());
            stmt.setString(2, usrs.getApellido());
            stmt.setBoolean(3, usrs.isTipoUsr());
            stmt.setInt(4,usrs.getId());
            if(stmt.executeUpdate() > 0) res = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    @Override
    public boolean delete(int id) {
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt =
                    conection.prepareStatement(
                            "delete from usuarios where id=?");
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
    public boolean insert(Object usr){
        boolean resultado = false;
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt =
                    conection.prepareStatement(
                            "insert into usuarios(nombre,apellido,email,contra,tipoUsr) " +
                                    "values (?,?,?,sha2(?,224),?)");
            stmt.setString(1,usr.getNombre());
            stmt.setString(2,usr.getApellido());
            stmt.setString(3,usr.getEmail());
            stmt.setString(4,usr.getContra());
            stmt.setBoolean(5,usr.isTipoUsr());
            int res = stmt.executeUpdate();
            if(res>=1) resultado=true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }


    public Object findOne(String email, String contraseña) {
        Usuarios usrs = new Usuarios();
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try{
            PreparedStatement stmt =
                    con.prepareStatement("select * from usuarios " +
                            "where email = ? AND contra = sha2(?,224)");
            stmt.setString(1,email);
            stmt.setString(2,contraseña);
            ResultSet res = stmt.executeQuery();
            if(res.next()) {
                usrs.setNombre(res.getString("nombre"));
                usrs.setApellido(res.getString("apellido"));
                usrs.setEmail(res.getString("email"));
                usrs.setContra(res.getString("contra"));
                usrs.setTipoUsr(res.getBoolean("tipoUsr"));
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return usrs;
    }
}
