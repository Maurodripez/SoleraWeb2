package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Date;

import DAO.DAOMostrarDatos;
import Modelo.ModeloBusquedaDatos;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

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
        String accion = request.getParameter("accion");
        float porcentajeDocs = 0;
        String porcentajeTotal = "0";
        DAOMostrarDatos daoMDatos = new DAOMostrarDatos();
        try (PrintWriter out = response.getWriter()) {
            if ("mostrarTabla".equals(accion)) {
                String fechaCarga = request.getParameter("fechaCarga");
                String estacion = request.getParameter("estacion");
                String estatus = request.getParameter("estatus");
                String subEstatus = request.getParameter("subEstatus");
                String fechaSeguimiento = request.getParameter("fechaSeguimiento");
                String region = request.getParameter("region");
                String estado = request.getParameter("estado");
                String cobertura = request.getParameter("cobertura");
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                LocalDate fechaHoy;
                String fechaBuscar1 = "";
                String fechaBuscar2 = "";
                if (null != fechaCarga) {
                    switch (fechaCarga) {
                        case "Hoy":
                            fechaHoy = LocalDate.now();
                            fechaBuscar1 = fechaHoy.toString();
                            break;
                        case "Ayer": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -1);
                            Date todate1 = cal.getTime();
                            fechaBuscar1 = dateFormat.format(todate1);
                            break;
                        }
                        case "Ultimos 7 Dias": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -7);
                            Date todate1 = cal.getTime();
                            fechaBuscar1 = dateFormat.format(todate1);
                            break;
                        }
                        case "Ultimos 30 Dias": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -30);
                            Date todate1 = cal.getTime();
                            fechaBuscar1 = dateFormat.format(todate1);
                            break;
                        }
                        case "Mes Anterior": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -61);
                            Date todate1 = cal.getTime();
                            fechaBuscar1 = dateFormat.format(todate1);
                            break;
                        }
                        case "Selecciona...":
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -180);
                            Date todate1 = cal.getTime();
                            fechaBuscar1 = dateFormat.format(todate1);
                            break;
                        default:
                            break;
                    }
                }
                if (null != fechaSeguimiento) {
                    switch (fechaSeguimiento) {
                        case "Hoy":
                            fechaHoy = LocalDate.now();
                            fechaBuscar2 = fechaHoy.toString();
                            break;
                        case "Ayer": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -1);
                            Date todate1 = cal.getTime();
                            fechaBuscar2 = dateFormat.format(todate1);
                            break;
                        }
                        case "Ultimos 7 Dias": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -7);
                            Date todate1 = cal.getTime();
                            fechaBuscar2 = dateFormat.format(todate1);
                            break;
                        }
                        case "Ultimos 30 Dias": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -30);
                            Date todate1 = cal.getTime();
                            fechaBuscar2 = dateFormat.format(todate1);
                            break;
                        }
                        case "Mes Anterior": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -61);
                            Date todate1 = cal.getTime();
                            fechaBuscar2 = dateFormat.format(todate1);
                            break;
                        }
                        case "Selecciona...": {
                            Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, -180);
                            Date todate1 = cal.getTime();
                            fechaBuscar2 = dateFormat.format(todate1);
                            break;
                        }
                        default:
                            break;
                    }
                }
                for (ModeloBusquedaDatos mbDatos : daoMDatos.obtenerDatos(fechaBuscar1, estacion, estatus,
                        subEstatus,
                        fechaBuscar2, region, estado, cobertura)) {
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
                    out.println(porcentajeDocs + "-_/");
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
                        default:
                            porcentajeTotal = "0%";
                            break;
                    }
                    out.println(porcentajeTotal + "-_/");
                    out.print(mbDatos.getEstado() + "/_-");
                }
            } else if ("MostrarSiniestrosNoDocs".equals(accion)) {
                String porcentaje = request.getParameter("porcentajes");
                String soloDatos = request.getParameter("soloDatos");
                int cont = 0;
                for (ModeloBusquedaDatos mbDatos : daoMDatos.getTodosSinDocs()) {
                    if ("Solo%".equals(porcentaje)) {
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
                        out.print(porcentajeDocs + ",");
                        switch (mbDatos.getEstatusOperativo()) {
                            case "De 1 a 3 documentos":
                                porcentajeTotal = "25";
                                break;
                            case "De 4 a 6 documentos":
                                porcentajeTotal = "50";
                                break;
                            case "De 7 a 10 documentos":
                                porcentajeTotal = "100";
                                break;
                            case "Sin contacto en 30 dia":
                                porcentajeTotal = "0";
                                break;
                            case "Datos incorrectos":
                                porcentajeTotal = "0";
                                break;
                            default:
                                porcentajeTotal = "0";
                        }
                        out.print(porcentajeTotal + ",");
                    } else if ("SoloDatos".equals(soloDatos)) {
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
                        cont += 1;
                    }
                }
                out.println(cont);
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
}
