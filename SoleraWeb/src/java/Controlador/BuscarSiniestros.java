
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

@WebServlet(name = "BuscarSiniestros", urlPatterns = { "/buscar.do" })
public class BuscarSiniestros extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException      if a servlet-specific error occurs
     * @throws IOException           if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int saltoLinea = 0;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
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
                        out.println("entra aqui");
                        out.println("<tr class='row'>");
                        out.println("<td class='col'>"
                                + "<button type='button' id='" + sin.getIdRegistro()
                                + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                + "</svg></button></td>");
                        out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                        out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                        out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                        out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                        out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                        out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                        out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                        out.println("</tr>");
                    }
                    break;
                case "txtBuscar3a5":
                    for (Siniestros sin : bAjax.getResultados(mayorQue, menorQue)) {
                        out.println("<tr class='row'>");
                        out.println("<td class='col'>"
                                + "<button type='button' id='" + sin.getIdRegistro()
                                + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                + "</svg></button></td>");
                        out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                        out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                        out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                        out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                        out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                        out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                        out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                        out.println("</tr>");
                    }
                    break;
                case "txtBuscar6a14":
                    for (Siniestros sin : bAjax.getResultados(mayorQue, menorQue)) {
                        out.println("<tr class='row'>");
                        out.println("<td class='col'>"
                                + "<button type='button' id='" + sin.getIdRegistro()
                                + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                + "</svg></button></td>");
                        out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                        out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                        out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                        out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                        out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                        out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                        out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                        out.println("</tr>");
                    }
                    break;
                case "txtBuscarMas15":
                    for (Siniestros sin : bAjax.getResultadosMas15(mayorQue)) {
                        out.println("<tr class='row'>");
                        out.println("<td class='col'>"
                                + "<button type='button' id='" + sin.getIdRegistro()
                                + "' class='btnDinamicos btn btn-primary' onclick='cambiarNombre(this.id)' data-bs-toggle='modal'"
                                + "data-bs-target='#staticBackdrop' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                + "</svg></button></td>");
                        out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                        out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                        out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                        out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                        out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                        out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                        out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                        out.println("</tr>");
                    }
                    break;
                case "txtBuscarIdRegistro":
                    if (filtro != "")

                    {
                        for (Siniestros sin : bAjax.getIdRegistro(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarDiasTranscurridos":
                    if (filtro != "")

                    {
                        for (Siniestros sin : bAjax.getDiasTranscurridos(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarFechaInicio":
                    if (filtro != "")

                    {
                        for (Siniestros sin : bAjax.getFechaInicio(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarSiniestro":
                    if (filtro != "")

                    {
                        for (Siniestros sin : bAjax.getSiniestro(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarPoliza":
                    if (filtro != "")

                    {
                        for (Siniestros sin : bAjax.getPoliza(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarAsegurado":
                    if (filtro != "") {
                        saltoLinea = 0;
                        for (Siniestros sin : bAjax.getAsegurado(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBuscarEstatusCaso":
                    if (filtro != "")

                    {
                        for (Siniestros sin : bAjax.getStatus(filtro)) {
                            out.println("<tr class='row'>");
                            out.println("<td class='col'>"
                                    + "<button type='button' id='" + sin.getIdRegistro()
                                    + "' class='btn btn-primary' data-bs-toggle='modal'"
                                    + "data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'"
                                    + " width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                    + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 "
                                    + "1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                    + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 "
                                    + "0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>"
                                    + "</svg></button></td>");
                            out.println(" <td class='col'>" + sin.getIdRegistro() + "</td>");
                            out.println(" <td class='col'>" + sin.getDiasTranscurridos() + "</td>");
                            out.println(" <td class='col'>" + sin.getFechaPrimerEnvioDoc() + "</td>");
                            out.println(" <td class='col'>" + sin.getNumSiniestro() + "</td>");
                            out.println(" <td class='col'>" + sin.getPoliza() + "</td>");
                            out.println(" <td class='col'>" + sin.getAsegurado() + "</td>");
                            out.println(" <td align='center' class='col'>" + sin.getEstatusCliente() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println(" <a></a>");
                    }
                    break;
                case "txtBtnGeneralBuscar":
                    if (!"".equals(filtro)) {

                        for (Siniestros sin : bAjax.getSiniestroGeneral(filtro)) {
                            out.print(sin.getIdRegistro() + "//");
                            out.print(sin.getDiasTranscurridos() + "//");
                            out.print(sin.getFechaPrimerEnvioDoc() + "//");
                            out.print(sin.getNumSiniestro() + "//");
                            out.print(sin.getPoliza() + "//");
                            out.print(sin.getAsegurado() + "//");
                            out.print(sin.getEstatusCliente() + "-/");
                            /*
                             * out.println("<tr class='row'>");
                             * out.println("<td class='col'>"
                             * + "<button type='button' id='" + sin.getIdRegistro()
                             * + "' class='btnDinamicos btn btn-primary' data-bs-toggle='modal'"
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
                             */
                        }
                        // String r="Hola";
                        // r = bAjax.getSiniestroGeneral(filtro);
                        // out.println(r);
                    }
                default:
                    break;
            }
        } catch (

        SQLException ex) {
            Logger.getLogger(BuscarSiniestros.class.getName()).log(Level.SEVERE, null, ex);
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
