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

@WebServlet(name = "PrestamoServlet", value = "/PrestamoServlet")
public class PrestamoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("prestamos");
        String operacion = req.getParameter("operacion");
        String respuesta = "";

        if (operacion.equals("insert")){
            DaoPrestamos dao = new DaoPrestamos();
            //dao.delete(Integer.parseInt(req.getParameter("id")));
            respuesta = "";
        }
        if (operacion.equals("update")){
            DaoPrestamos dao = new DaoPrestamos();
            String matriAl = req.getParameter("matriAl");
            Prestamos pres = (Prestamos) dao.findOne(matriAl);
            pres.setMatriAl("matriAl");
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

        //Timestamp entregaDisp = Timestamp.valueOf(req.getParameter("entregaDisp"));
        //Timestamp devolucionDisp = Timestamp.valueOf(req.getParameter("devolucionDisp"));


        DaoPrestamos dao = new DaoPrestamos();


            int id = Integer.parseInt(req.getParameter("id"));
            Prestamos pres = new Prestamos();
            pres.setNomAl(nomAl);
            pres.setApellAl(apellAl);
            pres.setMatriAl(matriAl);
        Dispositivos disp = new Dispositivos();
        disp.setId(id);
        pres.setDispositivos(disp);

            dao.insert(pres);
        req.getSession().removeAttribute("dispositivos");
        DaoDispositivos daoDispositivos = new DaoDispositivos();
        req.getSession().setAttribute("dispositivos",daoDispositivos.findAll());
        req.getSession().removeAttribute("prestamos");
        DaoPrestamos daoPrestamos = new DaoPrestamos();
        req.getSession().setAttribute("prestamos",daoPrestamos.findAll());
        resp.sendRedirect("vistaBecario.jsp");
    }
}
