package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOCargaSiniestro;

import static java.lang.System.out;

@WebServlet(name = "CargarSiniestro", urlPatterns = { "/CargarSiniestro" })
public class CargarSiniestro extends HttpServlet {

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
            // servlet para la creacion de nuevos siniestros
            String respuesta = "Error al entrar";
            DAOCargaSiniestro dcSiniestro = new DAOCargaSiniestro();
            String numSiniestro = request.getParameter("numSiniestro");
            String fechaSiniestro = request.getParameter("fechaSiniestro");
            String numPoliza = request.getParameter("numPoliza");
            String cobertura = request.getParameter("cobertura");
            String afectado = request.getParameter("afectado");
            String nomAsegurado = request.getParameter("nomAsegurado");
            String regimen = request.getParameter("regimen");
            String telefonoPrincipal = request.getParameter("telefonoPrincipal");
            String telefonoSec = request.getParameter("telefonoSec");
            String correo = request.getParameter("correo");
            String marca = request.getParameter("marca");
            String tipo = request.getParameter("tipo");
            String modelo = request.getParameter("modelo");
            String numSerie = request.getParameter("numSerie");
            String ciudad = request.getParameter("ciudad");
            String fechaDecreto = request.getParameter("fechaDecreto");
            String taller = request.getParameter("taller");
            String sesion = request.getParameter("sesion");
            respuesta = dcSiniestro.setSiniestro(sesion,numSiniestro, fechaSiniestro, numPoliza, cobertura, afectado,
                    nomAsegurado, regimen, telefonoPrincipal, telefonoSec, correo, marca, tipo, modelo, numSerie,
                    ciudad, fechaDecreto, taller);
            out.println(respuesta);
        } catch (Exception e) {
            // TODO: handle exception
            out.println(e);
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
