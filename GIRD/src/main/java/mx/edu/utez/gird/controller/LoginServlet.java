package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoUsuarios;
import mx.edu.utez.gird.model.Usuarios;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String correo = req.getParameter("correo");
        String contra = req.getParameter("contra");
        String redirect = "index.jsp";

        DaoUsuarios dao = new DaoUsuarios();
        Usuarios usrs = (Usuarios) dao.findOne(correo,contra);

        if (usrs.getEmail() != correo) { //Que si encontro al usuario
            if (usrs.isTipoUsr()){
                redirect = "vistaAdmin.jsp";
            } else {
                redirect="vistaBecario.jsp";
            }
            req.getSession().setAttribute("tipoSesion", usrs.isTipoUsr());
            req.getSession().setAttribute("sesion", usrs);
        }else{
            req.getSession().setAttribute("msg", "Informacion Errónea");
        }
        resp.sendRedirect(redirect);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("sesion");
        req.getSession().removeAttribute("tipoSesion");
        resp.sendRedirect("index.jsp");
    }

}
