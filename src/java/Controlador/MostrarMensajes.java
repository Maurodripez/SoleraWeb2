package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.MensajesSinResponder;
import Modelo.Siniestros;

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
            MensajesSinResponder msResponder = new MensajesSinResponder();
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
                    int cantidadMensajes = 23;
                    cantidadMensajes = msResponder.getMensajes(mayor, menor);
                    out.print(cantidadMensajes);
                    break;
                case "MostrarTabla":
                    String mayorT = request.getParameter("mayor");
                    String menorT = request.getParameter("menor");
                    for (Siniestros sin : msResponder.getMensajes(mayorT, menorT)) {
                        out.print(sin.getIdRegistro() + "//");
                        out.print(sin.getNumSiniestro() + "//");
                        out.print(sin.getAsegurado() + "//");
                        out.print(sin.getPoliza() + "//");
                        out.print(sin.getEstatusCliente() + "//");
                        out.print(sin.getDiasTranscurridos() + "//");
                        out.print(sin.getFechaPrimerEnvioDoc() + "-/");
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
