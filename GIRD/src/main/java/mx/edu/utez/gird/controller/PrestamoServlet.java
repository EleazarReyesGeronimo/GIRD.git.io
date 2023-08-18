package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoPrestamos;
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

        if (operacion.equals("prestar")){
            DaoPrestamos dao = new DaoPrestamos();
            dao.delete(Integer.parseInt(req.getParameter("id")));
            respuesta = "vistaAdmin.jsp";
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
        Timestamp entregaDisp = Timestamp.valueOf(req.getParameter("entregaDisp"));
        Timestamp devolucionDisp = Timestamp.valueOf(req.getParameter("devolucionDisp"));


        DaoPrestamos dao = new DaoPrestamos();

        if(!req.getParameter("id").isEmpty()){
            int id = Integer.parseInt(req.getParameter("id"));
            //Es una operacion de update
            dao.update(id,new Prestamos(id,nomAl,apellAl,matriAl,entregaDisp,devolucionDisp));
        }else{
            dao.insert(new Prestamos(0,nomAl,apellAl,matriAl,entregaDisp,devolucionDisp));
        }

        resp.sendRedirect("vistaAdmin.jsp");
    }
}
