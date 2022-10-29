package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.BusquedaAjax;
import Modelo.Conexion;
import Modelo.Siniestros;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "BuscarSiniestros", urlPatterns = {"/buscar.do"})
public class BuscarSiniestros extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int saltoLinea = 0;
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            // se obtienen los valores del filtro con jquery y ajax
            // recuperar id
            String idObtenido = request.getParameter("idGuardado");
            // recuperar la letra o numero que se esta consultando
            String filtro = request.getParameter("filtro");
            String mayorQue = request.getParameter("mayorQue");
            String menorQue = request.getParameter("menorQue");
            // se cerea el objeto para llamar a la consulta de sql
            BusquedaAjax bAjax = new BusquedaAjax();
            // se recorre la lista para obtener los valores que se presentan
            // dependiendo el ID se lanza una consulta ya preestablecida
            switch (idObtenido) {
                case "txtBuscar0a2":
                    for (Siniestros sin : bAjax.getResultados(mayorQue, menorQue)) {
                        out.print(sin.getIdRegistro() + "-_/");
                        out.print(sin.getDiasTranscurridos() + "-_/");
                        out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                        out.print(sin.getNumSiniestro() + "-_/");
                        out.print(sin.getPoliza() + "-_/");
                        out.print(sin.getAsegurado() + "-_/");
                        out.print(sin.getEstatusCliente() + "/_-");
                    }
                    break;
                case "txtBuscar3a5":
                    for (Siniestros sin : bAjax.getResultados(mayorQue, menorQue)) {
                        out.print(sin.getIdRegistro() + "-_/");
                        out.print(sin.getDiasTranscurridos() + "-_/");
                        out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                        out.print(sin.getNumSiniestro() + "-_/");
                        out.print(sin.getPoliza() + "-_/");
                        out.print(sin.getAsegurado() + "-_/");
                        out.print(sin.getEstatusCliente() + "/_-");
                    }
                    break;
                case "txtBuscar6a14":
                    for (Siniestros sin : bAjax.getResultados(mayorQue, menorQue)) {
                        out.print(sin.getIdRegistro() + "-_/");
                        out.print(sin.getDiasTranscurridos() + "-_/");
                        out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                        out.print(sin.getNumSiniestro() + "-_/");
                        out.print(sin.getPoliza() + "-_/");
                        out.print(sin.getAsegurado() + "-_/");
                        out.print(sin.getEstatusCliente() + "/_-");
                    }
                    break;
                case "txtBuscarMas15":
                    for (Siniestros sin : bAjax.getResultadosMas15(mayorQue)) {
                        out.print(sin.getIdRegistro() + "-_/");
                        out.print(sin.getDiasTranscurridos() + "-_/");
                        out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                        out.print(sin.getNumSiniestro() + "-_/");
                        out.print(sin.getPoliza() + "-_/");
                        out.print(sin.getAsegurado() + "-_/");
                        out.print(sin.getEstatusCliente() + "/_-");
                    }
                    break;
                case "txtBuscarIdRegistro":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getIdRegistro(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarDiasTranscurridos":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getDiasTranscurridos(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarFechaInicio":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getFechaInicio(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarSiniestro":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getSiniestro(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarPoliza":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getPoliza(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarAsegurado":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getAsegurado(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarEstatusCaso":
                    if (!"".equals(filtro)) {
                        for (Siniestros sin : bAjax.getStatus(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBtnGeneralBuscar":
                    if (!"".equals(filtro)) {

                        for (Siniestros sin : bAjax.getSiniestroGeneral(filtro)) {
                            out.print(sin.getIdRegistro() + "-_/");
                            out.print(sin.getDiasTranscurridos() + "-_/");
                            out.print(sin.getFechaPrimerEnvioDoc() + "-_/");
                            out.print(sin.getNumSiniestro() + "-_/");
                            out.print(sin.getPoliza() + "-_/");
                            out.print(sin.getAsegurado() + "-_/");
                            out.print(sin.getEstatusCliente() + "/_-");
                        }
                    }
                    break;
                default:
                    break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BuscarSiniestros.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BuscarSiniestros.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BuscarSiniestros.class.getName()).log(Level.SEVERE, null, ex);
        }
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
