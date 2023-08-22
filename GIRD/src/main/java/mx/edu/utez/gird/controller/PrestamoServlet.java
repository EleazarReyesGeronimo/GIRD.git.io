package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoDispositivos;
import mx.edu.utez.gird.model.DaoPrestamos;
import mx.edu.utez.gird.model.Dispositivos;
import mx.edu.utez.gird.model.Prestamos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PrestamoServlet", value = "/PrestamoServlet")
public class PrestamoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("prestamos");
        String operacion = req.getParameter("operacion");
        String respuesta = "";

        if (operacion.equals("insert")){
            DaoPrestamos dao = new DaoPrestamos();
            respuesta = "";
        }
        if (operacion.equals("update")){
            DaoPrestamos dao = new DaoPrestamos();
            int id = Integer.parseInt(req.getParameter("id"));
            Prestamos pres = (Prestamos) dao.findOne(id);
            Dispositivos disp = pres.getDispositivos();
            pres.setEstatus(false);
            disp.setEstatus("Disponible");
            req.getSession().setAttribute("prestamo",pres);

            respuesta ="prestamosForm.jsp";
        }

        //Falta regresar una respuesta
        resp.sendRedirect(respuesta);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nomAl = req.getParameter("nomAl");
        String apellAl = req.getParameter("apellAl");
        String matriAl = req.getParameter("matriAl");
        boolean estatus = Boolean.parseBoolean(req.getParameter("estatus"));

            DaoPrestamos dao = new DaoPrestamos();
            int id = Integer.parseInt(req.getParameter("id"));

            Prestamos pres = new Prestamos();
            pres.setNomAl(nomAl);
            pres.setApellAl(apellAl);
            pres.setMatriAl(matriAl);
            pres.setEstatus(true);

            Dispositivos disp = new Dispositivos();
            disp.setId(id);
            disp.setEstatus("Prestado");

            pres.setDispositivos(disp);
            dao.insert(pres);
        req.getSession().removeAttribute("dispositivos");
        DaoDispositivos daoDispositivos = new DaoDispositivos();
        req.getSession().setAttribute("dispositivos", daoDispositivos.findAll());
        req.getSession().removeAttribute("prestamos");
        DaoPrestamos daoPrestamos = new DaoPrestamos();
        req.getSession().setAttribute("prestamos", (List<Prestamos>) daoPrestamos.findAll());
        resp.sendRedirect("vistaBecario.jsp");

    }
}
