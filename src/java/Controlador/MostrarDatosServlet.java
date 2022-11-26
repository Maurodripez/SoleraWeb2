package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.ObtenerInfoDesplegable;
import Modelo.ModeloInfoSiniestro;

@WebServlet(name = "MostrarDatosServlet", urlPatterns = {"/MostrarDatosServlet"})
public class MostrarDatosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            ObtenerInfoDesplegable oiDesplegable = new ObtenerInfoDesplegable();
            String resultado = request.getParameter("idGuardadoEnvio");
            for (ModeloInfoSiniestro miSiniestro : oiDesplegable.getTodoRegistro(resultado)) {
                out.println(miSiniestro.getFechaCarga() + "," + miSiniestro.getNumSiniestro() + ","
                        + miSiniestro.getPoliza() + "," + miSiniestro.getAfectado() + "," + miSiniestro.getTipoDeCaso()
                        + ","
                        + miSiniestro.getCobertura() + "," + miSiniestro.getFechaSiniestro() + ","
                        + miSiniestro.getDatosAudatex() + "," + miSiniestro.getEstado() + "," + miSiniestro.getCiudad()
                        + "," + miSiniestro.getRegion() + "," + miSiniestro.getUbicacionTaller() + ","
                        + miSiniestro.getFinanciado() + "," + miSiniestro.getRegimenFiscal() + ","
                        + miSiniestro.getPasswordExterno() + "," + miSiniestro.getEstatusCliente() + ","
                        + miSiniestro.getComentariosCliente() + "," + miSiniestro.getMarca() + ","
                        + miSiniestro.getTipo() + "," + miSiniestro.getAñO() + "," + miSiniestro.getPlacas() + ","
                        + miSiniestro.getNumSerie() + "," + miSiniestro.getValIndemnizacion() + ","
                        + miSiniestro.getValComercial() + "," + miSiniestro.getAsegurado() + ","
                        + miSiniestro.getCorreo() + "," + miSiniestro.getTelPrincipal() + ","
                        + miSiniestro.getTelSecundario() + "," + miSiniestro.getContacto() + ","
                        + miSiniestro.getCorreoContacto() + "," + miSiniestro.getTelContacto());

            }

        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
