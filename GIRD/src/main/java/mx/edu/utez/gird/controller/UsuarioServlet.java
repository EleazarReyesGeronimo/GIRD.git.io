package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoUsuarios;
import mx.edu.utez.gird.model.Usuarios;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsuarioServlet", value = "/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
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
        //boolean tipoUsr = req.equals("tipoUsr");
        //String redirect = "vistaUsuarios.jsp";

        //CHECAR si sí retorna el valor correcto
        boolean tipoUsr = Boolean.parseBoolean(req.getParameter("tipoUsr"));
              /* req.setAttribute("tipoUsrVariable", tipoUsr);
        req.getRequestDispatcher("vistaUsuarios.jsp").forward(req, resp);*/

        DaoUsuarios dao = new DaoUsuarios();

        if(!req.getParameter("id").isEmpty()){
            int id = Integer.parseInt(req.getParameter("id"));
            //Es una operacion de update
            dao.update(id,new Usuarios(id,nombre,apellido,email,contra,tipoUsr));
        }else {
            dao.insert(new Usuarios(0,nombre,apellido,email,contra,tipoUsr));
        }
        resp.sendRedirect("vistaUsuarios.jsp");

    }
}
