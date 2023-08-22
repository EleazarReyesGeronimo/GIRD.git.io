package mx.edu.utez.gird.controller;

import mx.edu.utez.gird.model.DaoUsuarios;
import mx.edu.utez.gird.model.Usuarios;
import mx.edu.utez.gird.utils.SendMail;


/*import com.example.calculadoraweb.model.DaoUsuario;
import com.example.calculadoraweb.model.Usuario;
import com.example.calculadoraweb.utils.SendMail;*/

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RecuperacionServlet", value = "/recuperacion")
public class RecuperacionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");

        //Validar que el usuario exista en la base de datos
        DaoUsuarios dao = new DaoUsuarios();
        boolean existe = dao.findOne2(email).isTipoUsr();
        //Si si existe:
        //Le mandaria un correo con el codigo para recuperar su contraseña
        if(existe){
            SendMail mail = new SendMail();
            Usuarios usr = dao.findOne2(email);
            //String codigo = usr.getCodigo();
            String url = req.getRequestURL().toString();
            mail.sendEmail(email,
                    "Actualización de contraseña",
                    "Por favor, da click en el siguiente enlace" +
                            " para recuperar tu contraseña <br><br> " +
                          //  "<a href=\""+url+"?codigo="+codigo+"\">" +
                            "Da click aqui</a> ");
        }else {
            System.out.println("No existe tu correo en la base de datos, no eres un usuario, lo siento.");
        }
        //Si no existe:
        //1 hacer nada osea regresar AL INDEX
        //2 avisarle al usuario que ese correo no existe en la BD
        resp.sendRedirect("index.jsp");
    }

    /*@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String codigo = req.getParameter("codigo");
        DaoUsuarios dao = new DaoUsuarios();
        //primero checar que el codigo corresponda al que esta en la BD
        if(dao.findCodigo(codigo)){
            //Si existe el codigo
            // Si si corresponde mandar al usuario a un formulario
            resp.sendRedirect("nuevaContrasena.jsp");
            //para que me de su nueva contraseña
            //Va actualizar la contraseña del usuario y ademas debe de
            //actulaizar el codigo en la base de datos
        }else{
            //Decirle al usuario que su codigo no es valido y no puede cambiar contraseña
        }


    }*/
}