
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.BusquedaParticular;
import Modelo.ModeloBusquedaDatos;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "BusquedaParticularDatos", urlPatterns = { "/BusquedaParticularDatos" })
public class BusquedaParticularDatos extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            float porcentajeDocs = 0;
            String porcentajeTotal = "0";
            String idRegistro = request.getParameter("id");
            String value = request.getParameter("valor");
            BusquedaParticular bParticular = new BusquedaParticular();
            switch (idRegistro) {
                case "bRegistro":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getID(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bSiniestro":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getSiniestro(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bPoliza":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getPoliza(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bMarca":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getMarca(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bTipo":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getTipo(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bSerie":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getSerie(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bCarga":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getFechaCarga(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bEstacion":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getEstacion(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bEstatus":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getEstatus(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
                    }
                    break;

                case "bDocumentos":
                    break;

                case "bTotal":
                    break;

                case "bEstado":
                    for (ModeloBusquedaDatos mbDatos : bParticular.getEstado(value)) {
                        out.print(mbDatos.getIdRegistro() + "-_/");
                        out.print(mbDatos.getNumSiniestro() + "-_/");
                        out.print(mbDatos.getPoliza() + "-_/");
                        out.print(mbDatos.getMarca() + "-_/");
                        out.print(mbDatos.getTipo() + "-_/");
                        out.print(mbDatos.getNumSerie() + "-_/");
                        out.print(mbDatos.getFechaCarga() + "-_/");
                        out.print(mbDatos.getEstacionProceso() + "-_/");
                        out.print(mbDatos.getEstatusOperativo() + "-_/");
                        if ("true".equals(mbDatos.getFactura())) {
                            porcentajeDocs += 10;
                        }
                        if ("true".equals(mbDatos.getPoder())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getIdentificacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getSituacion())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getCurp())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getEstadoDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTenencia())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getBaja())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getTarjeta())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getPolizaDoc())) {
                            porcentajeDocs += 9;
                        }
                        if ("true".equals(mbDatos.getComprobante())) {
                            porcentajeDocs += 9;
                        }
                        out.print(porcentajeDocs + "-_/");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25%";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50%";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100%";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0%";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0%";
                                break;
                        }
                        out.print(porcentajeTotal + "-_/");
                        out.print(mbDatos.getEstado() + "/_-");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BusquedaParticularDatos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
