/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.ActualizarDatoscliente;
import Modelo.ModeloInfoSiniestro;

/**
 *
 * @author SEAS
 */
@WebServlet(name = "ObtenerInfoDesplegableServlet", urlPatterns = { "/ObtenerInfoDesplegableServlet" })
public class ObtenerInfoDesplegableServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String r;
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet prueba</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet prueba at " + request.getParameter("region") + "</h1>");
            out.println("</body>");
            out.println("</html>");
            ActualizarDatoscliente adCliente = new ActualizarDatoscliente();
            ModeloInfoSiniestro mISiniestro = new ModeloInfoSiniestro();
            String fechaCarga = request.getParameter("fechaCarga");
            String numSiniestro = request.getParameter("numSiniestro");
            String numPoliza = request.getParameter("poliza");
            String afectado = request.getParameter("afectado");
            String tipoDeCaso = request.getParameter("tipoDeCaso");
            String cobertura = request.getParameter("cobertura");
            String fechaSiniestro = request.getParameter("fechaSiniestro");
            String datosAudatex = request.getParameter("datosAudatex");
            String estado = request.getParameter("estado");
            String ciudad = request.getParameter("ciudad");
            String region = request.getParameter("region");
            String ubicacionTaller = request.getParameter("ubicacionTaller");
            String financiado = request.getParameter("financiado");
            String regimenFiscal = request.getParameter("regimenFiscal");
            String passwordExterno = request.getParameter("passwordExterno");
            String estatusCliente = request.getParameter("estatusCliente");
            String comentariosClientes = request.getParameter("comentariosCliente");
            // inicio datos vehiculo///////////////////////////
            String marca = request.getParameter("marca");
            String tipo = request.getParameter("tipo");
            String modelo = request.getParameter("modelo");
            String placas = request.getParameter("placas");
            String numSerie = request.getParameter("numSerie");
            String valIndemnizacion = request.getParameter("valIndemnizacion");
            String valComercial = request.getParameter("valComercial");
            /////////// inicio asegurado /////////////////////
            String asegurado = request.getParameter("asegurado");
            String correo = request.getParameter("correo");
            String telPrincipal = request.getParameter("telPrincipal");
            String telSecundario = request.getParameter("telSecundario");
            String contacto = request.getParameter("contacto");
            String correoContacto = request.getParameter("correoContacto");
            String telContacto = request.getParameter("telContacto");
            String idEditable = request.getParameter("idEditableActual");
            r = adCliente.GuardarExpediente(fechaCarga, numSiniestro, numPoliza, afectado, tipoDeCaso, cobertura,
                    fechaSiniestro, datosAudatex, estado, ciudad, region, ubicacionTaller, financiado, regimenFiscal,
                    passwordExterno, estatusCliente, comentariosClientes, marca, tipo, modelo, placas, numSerie,
                    valIndemnizacion, valComercial, asegurado, correo, telPrincipal, telSecundario, contacto,
                    correoContacto, telContacto, idEditable);
          //  response.sendRedirect("/SoleraWeb/Principal.jsp?respuesta=" + r);
        } catch (Exception e) {
            // TODO: handle exception
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
