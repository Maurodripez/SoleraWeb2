package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOTablaGrande;
import Modelo.ModeloTablaGrande;

@WebServlet(name = "DatosExportar", urlPatterns = {"/DatosExportar"})
public class DatosExportar extends HttpServlet {

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
            DAOTablaGrande dtGrande = new DAOTablaGrande();
            for(ModeloTablaGrande mtGrande : dtGrande.getTabla()){
                out.print(mtGrande.getNumSiniestro()+"-_/");
                out.print(mtGrande.getPoliza()+"-_/");
                out.print(mtGrande.getAfectado()+"-_/");
                out.print(mtGrande.getTipoDeCaso()+"-_/");
                out.print(mtGrande.getCobertura()+"-_/");
                out.print(mtGrande.getFechaSiniestro()+"-_/");
                out.print(mtGrande.getEstado()+"-_/");
                out.print(mtGrande.getCiudad()+"-_/");
                out.print(mtGrande.getRegion()+"-_/");
                out.print(mtGrande.getUbicacionTaller()+"-_/");
                out.print(mtGrande.getRegimenFiscal()+"-_/");
                out.print(mtGrande.getEstatusCliente()+"-_/");
                out.print(mtGrande.getComentariosCliente()+"-_/");
                out.print(mtGrande.getFechaCarga()+"-_/");
                out.print(mtGrande.getUsuarioCarga()+"-_/");
                out.print(mtGrande.getEstatusSeguimientoSin()+"-_/");
                out.print(mtGrande.getUsuarioAsignadoSin()+"-_/");
                out.print(mtGrande.getFechaAsignacion()+"-_/");
                out.print(mtGrande.getFechaSeguimiento()+"-_/");
                out.print(mtGrande.getComentarios()+"-_/");
                out.print(mtGrande.getMarca()+"-_/");
                out.print(mtGrande.getTipo()+"-_/");
                out.print(mtGrande.getModelo()+"-_/");
                out.print(mtGrande.getNumSerie()+"-_/");
                out.print(mtGrande.getValorIndemnizacion()+"-_/");
                out.print(mtGrande.getValorComercial()+"-_/");
                out.print(mtGrande.getPlacas()+"-_/");
                out.print(mtGrande.getTelefonoPrincipal()+"-_/");
                out.print(mtGrande.getTelefonosecundario()+"-_/");
                out.print(mtGrande.getContacto()+"-_/");
                out.print(mtGrande.getCorreo()+"-_/");
                out.print(mtGrande.getAsegurado()+"-_/");
                out.print(mtGrande.getCorreoContacto()+"-_/");
                out.print(mtGrande.getTelContacto()+"/-_");
            }
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
