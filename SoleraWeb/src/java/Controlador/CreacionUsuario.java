package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOCreacionUsuario;
import Modelo.ModeloCreacionUsuario;

@WebServlet(name = "CreacionUsuario", urlPatterns = { "/CreacionUsuario" })
public class CreacionUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String accion = request.getParameter("accion");
            DAOCreacionUsuario dcUsuario = new DAOCreacionUsuario();
            // out.println(privilegio + "" + usuario + "" + password);
            switch (accion) {
                case "crearUsuario":
                    String usuario = request.getParameter("usuario");
                    String password = request.getParameter("password");
                    String privilegio = request.getParameter("privilegio");
                    String respusta = dcUsuario.crearUsuario(usuario, password, privilegio);
                    out.println(respusta);
                    break;
                case "TablaUsuarios":
                    for (ModeloCreacionUsuario mcUsuario : dcUsuario.getUsuarios()) {
                        out.print(mcUsuario.getId() + "," + mcUsuario.getUsuario() + "," + mcUsuario.getPassword() + ","
                                + mcUsuario.getPrivilegio() + "//");
                    }
                    break;
                case "CargarDatos":
                    String id = request.getParameter("id");
                    for (ModeloCreacionUsuario mcUsuario : dcUsuario.cargarUsuario(id)) {
                        out.print(mcUsuario.getId() + "," + mcUsuario.getUsuario() + "," + mcUsuario.getPassword() + ","
                                + mcUsuario.getPrivilegio());
                    }
                    break;
                case "EditarUsuario":
                    id = request.getParameter("id");
                    usuario = request.getParameter("usuario");
                    password = request.getParameter("password");
                    privilegio = request.getParameter("privilegio");
                    String respuesta = dcUsuario.editarUsuario(id, usuario, password, privilegio);
                    out.print(respuesta);
                    break;
                case "ValidarUsuario":
                    usuario = request.getParameter("usuario");
                    int usuarioExiste = 0;
                    usuarioExiste = dcUsuario.usuarioExiste(usuario);
                    out.print(usuarioExiste);
                    break;
                case "EliminarUsuario":
                id = request.getParameter("id");
                    String resp = dcUsuario.EliminarUsuario(id);
                    out.print(resp);
                    break;
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
