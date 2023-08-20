package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoDispositivos;
import mx.edu.utez.gird.model.DaoPrestamos;
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


        if (usrs.getEmail() != correo && usrs.getEmail() != null && usrs.getEmail() != "") { //Que si encontro al usuario
            if (usrs.isTipoUsr()){
                redirect = "preadmin.jsp";
            } else {
                //aqui iria la lógica para conseguir los dispositivos y los prestamos para mostrarlos en vistaBecario

                req.getSession().removeAttribute("dispositivos");
                DaoDispositivos daoDispositivos = new DaoDispositivos();
                req.getSession().setAttribute("dispositivos",daoDispositivos.findAll());
                req.getSession().removeAttribute("prestamos");
                DaoPrestamos daoPrestamos = new DaoPrestamos();
                req.getSession().setAttribute("prestamos",daoPrestamos.findAll());

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
