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
        String correo = req.getParameter("email");
        String contra = req.getParameter("contra");
        int id = Integer.parseInt(req.getParameter("id"));

        DaoUsuarios dao = new DaoUsuarios();
        Usuarios usrs = (Usuarios) dao.findOne(correo,contra);

        if (usrs.getId() != id) { //Que si encontro al usuario
            if (usrs.getEmail().equals(correo)&& usrs.getContra().equals(contra)){

                req.getSession().setAttribute("tipoSesion", "admin");
            }
            req.getSession().setAttribute("sesion", usrs);
        }else{

        }
        resp.sendRedirect("cliente.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("sesion");
        req.getSession().removeAttribute("tipoSesion");
        resp.sendRedirect("login.jsp");
    }

}
