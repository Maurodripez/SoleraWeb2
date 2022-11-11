
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOGuardarSeguimiento;
import DAO.MostrarDocumentosEstados;
import Modelo.ModeloGuardarSeguimiento;

@WebServlet(name = "GuardarSeguimiento", urlPatterns = { "/GuardarSeguimiento" })
public class GuardarSeguimiento extends HttpServlet {

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
        String respuesta = "nada";
        try (PrintWriter out = response.getWriter()) {
            String accion = request.getParameter("accion");
            DAOGuardarSeguimiento daoGSeguimiento = new DAOGuardarSeguimiento();
            switch (accion) {
                case "guardarSeguimiento":
                    ModeloGuardarSeguimiento mgSeguimiento = new ModeloGuardarSeguimiento();
                    mgSeguimiento.setEstacion(request.getParameter("estacion"));
                    mgSeguimiento.setComentSeguimiento(request.getParameter("comentSeguimiento"));
                    mgSeguimiento.setEstatusSeguimiento(request.getParameter("estatusSeguimiento"));
                    mgSeguimiento.setSubEstatus(request.getParameter("subEstatus"));
                    mgSeguimiento.setRespSolera(request.getParameter("respSolera"));
                    mgSeguimiento.setPersContactada(request.getParameter("persContactada"));
                    mgSeguimiento.setTipoPersona(request.getParameter("tipoPersona"));
                    mgSeguimiento.setTipoContacto(request.getParameter("tipoContacto"));
                    mgSeguimiento.setFechaIntExp(request.getParameter("fechaIntExp"));
                    mgSeguimiento.setFechaFactServ(request.getParameter("fechaFactServ"));
                    mgSeguimiento.setFechaTermino(request.getParameter("fechaTermino"));
                    mgSeguimiento.setIdRegistro(request.getParameter("idRegistro"));
                    mgSeguimiento.setFechaSeguimiento(request.getParameter("fechaSeguimiento"));
                    mgSeguimiento.setUsuario(request.getParameter("usuario"));
                    respuesta = daoGSeguimiento.GuardarSeguimiento(mgSeguimiento);
                    out.println(respuesta);
                    break;
                case "AsignarIntegrador":
                    String integrador = request.getParameter("integrador");
                    String idRegistro = request.getParameter("idRegistro");
                    String r = null;
                    r = daoGSeguimiento.asignarIntegrador(integrador, idRegistro);
                    out.println(r);
                    break;
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
