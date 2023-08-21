package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoUsuarios;
import mx.edu.utez.gird.model.Usuarios;
import mx.edu.utez.gird.utils.MysqlConector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FindAllServlet", value = "/FindAllServlet")
public class FindAllServlet extends HttpServlet {


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
                boolean tipoUsr = (res.getBoolean("tipoUsr"));
                listaUsuarios.add(usrs);

               /*req.setAttribute("tipoUsrVariable", tipoUsr);
                try {
                    req.getRequestDispatcher("vistaUsuarios.jsp").forward(req, resp);
                } catch (ServletException e) {
                    throw new RuntimeException(e);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }*/
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuarios;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("usuarios");
        String operacion = req.getParameter("operacion");
        String respuesta = "";

        if (operacion.equals("delete")){
            DaoUsuarios dao = new DaoUsuarios();
            dao.delete(Integer.parseInt(req.getParameter("id")));
            respuesta = "vistaUsuarios.jsp";
        }
        if (operacion.equals("update")){
            DaoUsuarios dao = new DaoUsuarios();
            int id = Integer.parseInt(req.getParameter("id"));
            Usuarios usr = (Usuarios) dao.findOne(id);
            usr.setId(id);
            req.getSession().setAttribute("usuario",usr);

            respuesta ="usuariosForm.jsp";
        }

        //Falta regresar una respuesta
        resp.sendRedirect(respuesta);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String email = req.getParameter("email");
        String contra = req.getParameter("contra");
        boolean tipoUsr = req.equals("tipoUsr");



        DaoUsuarios dao = new DaoUsuarios();

        if(!req.getParameter("id").isEmpty()){
            int id = Integer.parseInt(req.getParameter("id"));
            //Es una operacion de update
            dao.update(id,new Usuarios(id,nombre,apellido,email,contra,tipoUsr));
        }else{
            dao.insert(new Usuarios(0,nombre,apellido,email,contra,tipoUsr));
        }

        resp.sendRedirect("vistaUsuarios.jsp");
    }


}
