package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoDispositivos;
import mx.edu.utez.gird.model.Dispositivos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DispositivoServlet", value = "/DispositivoServlet")
public class DispositivoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("dispositivos");
        String operacion = req.getParameter("operacion");
        String respuesta = "";

        if (operacion.equals("delete")){
            DaoDispositivos dao = new DaoDispositivos();
            dao.delete(Integer.parseInt(req.getParameter("id")));
            respuesta = "vistaAdmin.jsp";
        }
        if (operacion.equals("update")){
            DaoDispositivos dao = new DaoDispositivos();
            int id = Integer.parseInt(req.getParameter("id"));
            Dispositivos disp = (Dispositivos) dao.findOne(id);
            disp.setId(id);
            req.getSession().setAttribute("dispositivo",disp);

            respuesta ="dispositivosForm.jsp";
        }

        //Falta regresar una respuesta
        resp.sendRedirect(respuesta);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String numSerie = req.getParameter("numSerie");
        String tipo = req.getParameter("tipo");
        String marca = req.getParameter("marca");
        String modelo = req.getParameter("modelo");
        int unidades = Integer.parseInt(req.getParameter("unidades"));
        String caracteristicas = req.getParameter("caracteristicas");
        String estatus = req.getParameter("estatus");
        String observaciones = req.getParameter("observaciones");


        DaoDispositivos dao = new DaoDispositivos();

        if(!req.getParameter("id").isEmpty()){
            int id = Integer.parseInt(req.getParameter("id"));
            //Es una operacion de update
            dao.update(id,new Dispositivos(id,numSerie,tipo,marca,modelo,unidades,caracteristicas,estatus,observaciones));
        }else{
            dao.insert(new Dispositivos(0,numSerie,tipo,marca,modelo,unidades,caracteristicas,estatus,observaciones));
        }

        resp.sendRedirect("vistaAdmin.jsp");
    }
}
