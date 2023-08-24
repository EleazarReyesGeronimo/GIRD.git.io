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
import java.sql.Timestamp;
import java.util.List;


@WebServlet(name = "PrestamoServlet", value = "/PrestamoServlet")
public class PrestamoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {;
        int idD = Integer.parseInt(req.getParameter("idD"));
        int idP = Integer.parseInt(req.getParameter("idP"));

        String operacion = req.getParameter("operacion");
        String respuesta = "Disponible";

            DaoDispositivos daoD = new DaoDispositivos();
            DaoPrestamos daoP = new DaoPrestamos();
            Prestamos pres = new Prestamos();
            Dispositivos disp = new Dispositivos();

            pres.setEstatus(false);

            disp.setId(idD);
            disp.setEstatus("Disponible");

            daoP.update(idP, pres);
            daoD.updateP(idD,disp);
            respuesta = "vistaPrestamos.jsp";

        //Falta regresar una respuesta
        resp.sendRedirect("/historial-prestamos");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nomAl = req.getParameter("nomAl");
        String apellAl = req.getParameter("apellAl");
        String matriAl = req.getParameter("matriAl");

            DaoPrestamos dao = new DaoPrestamos();
            int id = Integer.parseInt(req.getParameter("id"));
            DaoDispositivos daoD = new DaoDispositivos();

            Prestamos pres = new Prestamos();
            pres.setNomAl(nomAl);
            pres.setApellAl(apellAl);
            pres.setMatriAl(matriAl);
            pres.setEstatus(true);

            Dispositivos disp = new Dispositivos();
            disp.setId(id);
            disp.setEstatus("Prestado");

            pres.setDispositivos(disp);
            daoD.updateP(id,disp);
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
