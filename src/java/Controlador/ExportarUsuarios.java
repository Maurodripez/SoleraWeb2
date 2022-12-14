package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.AnalisisUsuarios;
import Modelo.ModeloGrandeAnalisis;

@WebServlet(name = "ExportarUsuarios", urlPatterns = { "/ExportarUsuarios" })
public class ExportarUsuarios extends HttpServlet {

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
            AnalisisUsuarios aUsuarios = new AnalisisUsuarios();
            String accion = request.getParameter("accion");
            switch (accion) {
                case "MostrarMov":
                    String r;
                    r = aUsuarios.getAnalisis();
                    String r2;
                    out.println(r);
                    break;
                case "buscarFechas":
                    String fechaInicio = request.getParameter("fechaInicio");
                    String fechaFinal = request.getParameter("fechaFinal");
                    r = aUsuarios.getAnalisisintervalo(fechaInicio, fechaFinal);
                    out.print(r);
                    break;
                case "buscarGrandeFechas":
                    fechaInicio = request.getParameter("fechaInicio");
                    fechaFinal = request.getParameter("fechaFinal");
                    // r = aUsuarios.getAnalisisGrande(fechaInicio, fechaFinal);
                    for (ModeloGrandeAnalisis mgAnalisis : aUsuarios.getAnalisisGrande(fechaInicio, fechaFinal)) {
                        out.print(mgAnalisis.getUsuario() + "-_/");
                        out.print(mgAnalisis.getFechaseguimiento() + "-_/");
                        out.print(mgAnalisis.getEstatusSeguimiento() + "-_/");
                        out.print(mgAnalisis.getComentarios() + "-_/");
                        out.print(mgAnalisis.getNumSiniestro() + "-_/");
                        out.print(mgAnalisis.getPoliza() + "-_/");
                        out.print(mgAnalisis.getAsegurado() + "-_/");
                        out.print(mgAnalisis.getMarca() + "-_/");
                        out.print(mgAnalisis.getTipo() + "-_/");
                        out.print(mgAnalisis.getModelo() + "-_/");
                        out.print(mgAnalisis.getNumSerie() + "-_/");
                        out.print(mgAnalisis.getEstado() + "-_/");
                        out.print(mgAnalisis.getRegion() + "/-_");
                    }
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
