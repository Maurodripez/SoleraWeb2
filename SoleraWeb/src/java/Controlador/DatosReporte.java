package Controlador;

import DAO.DAOConsultasMapas;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

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
            DAOConsultasMapas daoCMapa = new DAOConsultasMapas();
            DAOInfoCartas diCartas = new DAOInfoCartas();
            String accion = request.getParameter("accion");
            switch (accion) {
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
