package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoPrestamos;
import mx.edu.utez.gird.model.Prestamos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Historial", urlPatterns = {"/historial-prestamos", "/vista-Reporte"})
public class HistorialPrestamosServlet extends HttpServlet {
    String action;
    String redirect;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        action = req.getServletPath();
        switch (action) {
            case "/historial-prestamos":
                req.setAttribute("prestamos", new DaoPrestamos().findAll());
                redirect = "/vistaPrestamos.jsp";
                break;
            case "/vista-Reporte":
                req.setAttribute("prestamos", new DaoPrestamos().findAll());
                redirect = "/vistaReporte.jsp";
        }
        req.getRequestDispatcher(redirect).forward(req, resp);
    }
}
