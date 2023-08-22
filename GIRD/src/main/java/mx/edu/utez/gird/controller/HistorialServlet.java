package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.utils.MysqlConector;
import net.sf.jasperreports.engine.JasperRunManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "HistorialServlet", value = "/HistorialServlet")
public class HistorialServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String historial = "/WEB-INF/ReporteDispositivos.jasper";
        File file = new File(getServletContext().getRealPath(historial));
        InputStream input = new FileInputStream(file);
        Map mapa = new HashMap();
        Connection con = new MysqlConector().connect();

        resp.setContentType("application/pdf");
        resp.setHeader("Content-Disposition","attachment; filename=ReporteDispositivos.pdf");
        try {
            byte[] bytes = JasperRunManager.runReportToPdf(input, mapa, con);
            OutputStream os = resp.getOutputStream();
            os.write(bytes);
            os.flush();
            os.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        resp.sendRedirect("vistaReporte.jsp");
    }
}
