package Controlador;

import DAO.DAOConsultasMapas;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import DAO.DAOInfoCartas;
import Modelo.ModeloInfoCartas;
import Modelo.ModeloGraficas;

@WebServlet(name = "DatosReporte", urlPatterns = { "/DatosReporte" })
public class DatosReporte extends HttpServlet {

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
            DAOConsultasMapas dcMapas = new DAOConsultasMapas();
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.DATE, -365);
            Date todate = cal.getTime();
            String fechaBuscar = dateFormat.format(todate);
            DAOConsultasMapas daoCMapa = new DAOConsultasMapas();
            DAOInfoCartas diCartas = new DAOInfoCartas();
            String accion = request.getParameter("accion");
            int conteo = 0;
            switch (accion) {
                case "reporteDocumentos":
                    for (ModeloGraficas mGraficas : daoCMapa.getDocumentos()) {
                        conteo += Integer.parseInt(mGraficas.getConteoDocs());
                        out.print(mGraficas.getNombreDocs() + "," + mGraficas.getConteoDocs() + ",");
                    }
                    out.print(conteo);
                    break;
                case "FoliosFechas":

                    out.print(daoCMapa.Dias0a2() + "," + daoCMapa.Dias3a5() + "," + daoCMapa.Dias6a14() + ","
                            + daoCMapa.DiasMas15());
                    break;
                case "porRegiones":
                    for (ModeloGraficas mGraficas : daoCMapa.getRegiones()) {
                        out.print(mGraficas.getRegiones() + "," + mGraficas.getContRegiones() + ",");
                        conteo += 1;
                    }
                    out.print(conteo);
                    break;
                case "InfoCartas":
                    for (ModeloInfoCartas miCartas : diCartas.getEstacion()) {
                        out.print(miCartas.getConteo() + ",");
                        out.print(miCartas.getEstaciones() + ",");
                    }
                    out.print(diCartas.r);
                    break;
                case "seguimiento":
                    for (ModeloGraficas mGraficas : daoCMapa.getSeguimiento()) {
                        out.print(mGraficas.getConteo() + "," + mGraficas.getEstatus() + ",");
                    }
                    out.print(daoCMapa.contadorPorcentaje);
                    break;
                case "AsignadosEntregados":
                    boolean entra1 = true;
                    boolean entra2 = true;
                    boolean entra3 = true;
                    boolean entra4 = true;
                    boolean entra5 = true;
                    boolean entra6 = true;
                    boolean entra7 = true;
                    boolean entra8 = true;
                    boolean entra9 = true;
                    boolean entra10 = true;
                    boolean entra11 = true;
                    boolean entra12 = true;
                    int eneroYes = 0;
                    int febreroYes = 0;
                    int marzoYes = 0;
                    int abrilYes = 0;
                    int mayoYes = 0;
                    int junioYes = 0;
                    int julioYes = 0;
                    int agostoYes = 0;
                    int septiembreYes = 0;
                    int octubreYes = 0;
                    int noviembreYes = 0;
                    int diciembreYes = 0;
                    int eneroNo = 0;
                    int febreroNo = 0;
                    int marzoNo = 0;
                    int abrilNo = 0;
                    int mayoNo = 0;
                    int junioNo = 0;
                    int julioNo = 0;
                    int agostoNo = 0;
                    int septiembreNo = 0;
                    int octubreNo = 0;
                    int noviembreNo = 0;
                    int diciembreNo = 0;
                    int contador = 0;
                    for (ModeloGraficas mGraficas : daoCMapa.getAsignadosEntregados(fechaBuscar)) {
                        contador += 1;
                        switch (mGraficas.getMes()) {
                            case "enero":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    eneroYes += 1;
                                } else {
                                    eneroNo += 1;
                                }
                                break;
                            case "febrero":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    febreroYes += 1;
                                } else {
                                    febreroNo += 1;
                                }
                                break;
                            case "marzo":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    marzoYes += 1;
                                } else {
                                    marzoNo += 1;
                                }
                                break;
                            case "abril":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    abrilYes += 1;
                                } else {
                                    abrilNo += 1;
                                }
                                break;
                            case "mayo":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    mayoYes += 1;
                                } else {
                                    mayoNo += 1;
                                }
                                break;
                            case "junio":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    junioYes += 1;
                                } else {
                                    julioNo += 1;
                                }
                                break;
                            case "julio":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    julioYes += 1;
                                } else {
                                    julioNo += 1;
                                }
                                break;
                            case "agosto":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    agostoYes += 1;
                                } else {
                                    agostoNo += 1;
                                }
                                break;
                            case "septiembre":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    septiembreYes += 1;
                                } else {
                                    septiembreNo += 1;
                                }
                                break;
                            case "octubre":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    octubreYes += 1;
                                } else {
                                    octubreNo += 1;
                                }
                                break;
                            case "noviembre":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    noviembreYes += 1;
                                } else {
                                    noviembreNo += 1;
                                }
                                break;
                            case "diciembre":
                                if ("yes".equals(mGraficas.getYesNo())) {
                                    diciembreYes += 1;
                                } else {
                                    diciembreNo += 1;
                                }
                                break;
                        }
                        // out.println(daoCMapa.respuesta);
                    }
                    out.print("enero," + eneroYes + "," + eneroNo + ",");

                    out.print("febrero," + febreroYes + "," + febreroNo + ",");

                    out.print("marzo," + marzoYes + "," + marzoNo + ",");

                    out.print("abril," + abrilYes + "," + abrilNo + ",");

                    out.print("mayo," + mayoYes + "," + mayoNo + ",");

                    out.print("junio," + junioYes + "," + junioNo + ",");

                    out.print("julio," + julioYes + "," + julioNo + ",");

                    out.print("agosto," + agostoYes + "," + agostoNo + ",");

                    out.print("septiembre," + septiembreYes + "," + septiembreNo
                            + ",");

                    out.print("octubre," + octubreYes + "," + octubreNo + ",");

                    out.print("noviembre," + noviembreYes + "," + noviembreNo + ",");

                    out.print("diciembre," + diciembreYes + "," + diciembreNo + ",");

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
