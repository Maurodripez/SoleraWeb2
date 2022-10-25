package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.MensajesSinResponder;

@WebServlet(name = "MostrarMensajes", urlPatterns = { "/MostrarMensajes" })
public class MostrarMensajes extends HttpServlet {

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
            switch (accion) {
                case "MostrarMensajes":
                    int mayor = 0;
                    int menor = 0;
                    String dias = request.getParameter("dias");
                    if (null != dias) {
                        switch (dias) {
                            case "btnMsg0a2":
                                mayor = 0;
                                menor = 3;
                                break;
                            case "btnMsg3a5":
                                mayor = 2;
                                menor = 6;
                                break;
                            case "btnMsg6a14":
                                mayor = 6;
                                menor = 15;
                                break;
                            case "btnMsgMas15":
                                mayor = 15;
                                menor = 0;
                                break;
                            default:
                                break;
                        }
                    }
                    MensajesSinResponder msResponder = new MensajesSinResponder();
                    int cantidadMensajes = 23;
                    cantidadMensajes = msResponder.getMensajes(mayor, menor);
                    out.print(cantidadMensajes);
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
