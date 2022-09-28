
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOMostrarDatos;
import Modelo.ModeloBusquedaDatos;
import Modelo.UsuariosModelo;

@WebServlet(name = "ControladorMostrarDatos", urlPatterns = { "/ControladorMostrarDatos" })
public class ControladorMostrarDatos extends HttpServlet {

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
        String respuesta;
        response.setContentType("text/html;charset=UTF-8");
        String fechaCarga = request.getParameter("fechaCarga");
        String estacion = request.getParameter("estacion");
        String estatus = request.getParameter("estatus");
        String subEstatus = request.getParameter("subEstatus");
        String fechaSeguimiento = request.getParameter("fechaSeguimiento");
        String region = request.getParameter("region");
        String estado = request.getParameter("estado");
        String cobertura = request.getParameter("cobertura");

        try (PrintWriter out = response.getWriter()) {
            DAOMostrarDatos daoMDatos = new DAOMostrarDatos();

            for (ModeloBusquedaDatos mbDatos : daoMDatos.obtenerDatos(fechaCarga, estacion, estatus, subEstatus,
                    fechaSeguimiento, region, estado, cobertura)) {
                out.println(mbDatos.getFechaCarga());
            }
            // out.println(sesion.getPrivilegios());
            /*
             * for (ModeloBusquedaDatos mbDatos : DAOMostrarDatos.obtenerDatos(fechaCarga,
             * estacion, estatus, subEstatus,
             * fechaSeguimiento, region, estado, cobertura)) {
             * out.println("<tr class='row'>");
             * out.println("<td class='col'>"
             * + "<button type='button' id='" + sin.getIdRegistro()
             * + "' class='btn btn-primary' data-bs-toggle='modal'"
             * +
             * "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
             * +
             * " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
             * +
             * "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
             * +
             * "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
             * +
             * "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
             * +
             * "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
             * + "</svg></button></td>");
             * out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
             * out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
             * out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
             * out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
             * out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
             * out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
             * out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() +
             * "</td>");
             * out.println("</tr>");
             * }
             */

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
