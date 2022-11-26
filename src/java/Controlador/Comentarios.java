package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.GuardarComentarios;
import Modelo.ModeloTablamensajes;

@WebServlet(name = "Comentarios", urlPatterns = { "/Comentarios" })
public class Comentarios extends HttpServlet {

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
            String comentario = request.getParameter("comentario");
            String id = request.getParameter("idRegistro");
            switch (accion) {

                case "GuardarComents":
                    String respuesta;
                    GuardarComentarios gComents = new GuardarComentarios();
                    respuesta = gComents.Guardarcoments(comentario, id);
                    out.println(respuesta);
                    break;
                case "MostrarTabla":
                    GuardarComentarios gComentarios = new GuardarComentarios();
                    for (ModeloTablamensajes mtMensajes : gComentarios.getMensajes(id)) {
                        out.print(mtMensajes.getUsuario() + "," + mtMensajes.getFechaComentario() + ","
                                + mtMensajes.getComentario() + "/");
                    }
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
