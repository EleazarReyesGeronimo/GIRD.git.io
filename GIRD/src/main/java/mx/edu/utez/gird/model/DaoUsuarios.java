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
                usrs.setTipoUserCadena(res.getBoolean("tipoUsr")? "Administrador" : "Becario");
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
        Usuarios usu = (Usuarios) usrs;/*Esta linea nos especifica que estamos usando la clase de Usuarios,
        es como castear pero una clase, para saber que se está utilizando*/
        boolean res = false;
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try {
            PreparedStatement stmt =
                    con.prepareStatement("update usuarios set nombre = ?, apellido = ?, email = ?, contra = ?, tipoUsr = ? where id = ?");
            stmt.setString(1,usu.getNombre());
            stmt.setString(2, usu.getApellido());
            stmt.setString(3, usu.getEmail());
            stmt.setString(4, usu.getContra());
            stmt.setBoolean(5, usu.isTipoUsr());
            stmt.setInt(6,usu.getId());
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

    @Override
    public boolean insert(Object usrs){
        Usuarios usu = (Usuarios) usrs;/*Esta linea nos especifica que estamos usando la clase de Usuarios,
        es como castear pero una clase, para saber que se está utilizando*/
        boolean resultado = false;
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt =
                    conection.prepareStatement(
                            "insert into usuarios(nombre,apellido,email,contra,tipoUsr) " +
                                    "values (?,?,?,sha2(?,224),?)");
            stmt.setString(1,usu.getNombre());
            stmt.setString(2,usu.getApellido());
            stmt.setString(3,usu.getEmail());
            stmt.setString(4,usu.getContra());
            stmt.setBoolean(5,usu.isTipoUsr());
            int res = stmt.executeUpdate();
            if(res>=1) resultado=true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }


    public Object findOne(String email, String contra) {
        Usuarios usrs = new Usuarios();
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try{
            PreparedStatement stmt =
                    con.prepareStatement("select * from usuarios " +
                            "where email = ? AND contra = sha2(?,224)");
            stmt.setString(1,email);
            stmt.setString(2,contra);
            ResultSet res = stmt.executeQuery();
            if(res.next()) {
                usrs.setNombre(res.getString("nombre"));
                usrs.setApellido(res.getString("apellido"));
                usrs.setEmail(res.getString("email"));
                usrs.setContra(res.getString("contra"));
                usrs.setTipoUsr(res.getBoolean("tipoUsr"));
                System.out.println("nombre:" + usrs.getNombre());
                System.out.println("tipo:" + usrs.isTipoUsr());
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return usrs;
    }

    public Usuarios findOne2(String correo){
        Usuarios usr = new Usuarios();
        MysqlConector conector = new MysqlConector();
        Connection con = conector.connect();
        try{
            PreparedStatement stmt =
                    con.prepareStatement("select * from usuarios " +
                            "where correo = ?");
            stmt.setString(1,correo);
            ResultSet res = stmt.executeQuery();
            if(res.next()) {
                usr.setId(res.getInt("id"));
                usr.setNombre(res.getString("nombre"));
                usr.setEmail(res.getString("email"));
                usr.setContra(res.getString("contra"));
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return usr;
    }
}
