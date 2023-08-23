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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("prestamos");
        String operacion = req.getParameter("operacion");
        Timestamp hora = Timestamp.valueOf(req.getParameter("devoluciondisp"));
        String respuesta = "";

        if (operacion.equals("insert")){

            respuesta = "";
        }
        if (operacion.equals("update")){

            DaoDispositivos daoD = new DaoDispositivos();
            DaoPrestamos daoP = new DaoPrestamos();
            Prestamos pres = new Prestamos();
            Dispositivos disp = pres.getDispositivos();

            pres.setEstatus(0);
            pres.setEntregaDisp(hora);

            disp.setEstatus("Disponible");

            daoP.update(pres.getId(), pres);
            daoD.update(pres.getDispositivos().getId(),disp);
            respuesta = "vistaPrestamos.jsp";

        }

        //Falta regresar una respuesta
        resp.sendRedirect(respuesta);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String red = req.getParameter("red");
        String nomAl = req.getParameter("nomAl");
        String apellAl = req.getParameter("apellAl");
        String matriAl = req.getParameter("matriAl");

            DaoPrestamos dao = new DaoPrestamos();
            int id = Integer.parseInt(req.getParameter("id"));

            Prestamos pres = new Prestamos();
            pres.setNomAl(nomAl);
            pres.setApellAl(apellAl);
            pres.setMatriAl(matriAl);
            pres.setEstatus(1);

            Dispositivos disp = new Dispositivos();
            disp.setId(id);
            disp.setEstatus("Prestado");

            pres.setDispositivos(disp);
            dao.update(disp.getId(),disp);
            dao.insert(pres);
        req.getSession().removeAttribute("dispositivos");
        DaoDispositivos daoDispositivos = new DaoDispositivos();
        req.getSession().setAttribute("dispositivos", daoDispositivos.findAll());
        req.getSession().removeAttribute("prestamos");
        DaoPrestamos daoPrestamos = new DaoPrestamos();
        req.getSession().setAttribute("prestamos", (List<Prestamos>) daoPrestamos.findAll());
        resp.sendRedirect("vistaPrestamos.jsp");

    }


}
