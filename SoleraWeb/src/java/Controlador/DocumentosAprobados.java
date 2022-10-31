
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import DAO.DAOTablaDocumentos;
import DAO.MostrarDocumentosEstados;
import Modelo.ModeloDocumentos;
import Modelo.ModeloGuardarImagen;

@WebServlet(name = "DocumentosAprobados", urlPatterns = { "/DocumentosAprobados" })
public class DocumentosAprobados extends HttpServlet {

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
        MostrarDocumentosEstados mdEstados = new MostrarDocumentosEstados();
        String funcARealizar = request.getParameter("funcARealizar");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            switch (funcARealizar) {
                case "guardarDocsAprobados":
                    ModeloDocumentos mDocumentos = new ModeloDocumentos();
                    mDocumentos.setFactura(request.getParameter("factura"));
                    mDocumentos.setPoder(request.getParameter("poder"));
                    mDocumentos.setIdentificacion(request.getParameter("identificacion"));
                    mDocumentos.setSituacion(request.getParameter("situacion"));
                    mDocumentos.setCurp(request.getParameter("curp"));
                    mDocumentos.setEstado(request.getParameter("estado"));
                    mDocumentos.setTenencia(request.getParameter("tenencia"));
                    mDocumentos.setBaja(request.getParameter("baja"));
                    mDocumentos.setTarjeta(request.getParameter("tarjeta"));
                    mDocumentos.setPoliza(request.getParameter("poliza"));
                    mDocumentos.setComprobante(request.getParameter("comprobante"));
                    mDocumentos.setId(request.getParameter("idRegistro"));
                    respuesta = mdEstados.actualizarDocsAprobados(mDocumentos);
                    out.println(respuesta);
                    break;
                case "mostrarDocsAprobados":
                    String fkId = request.getParameter("idRegistro");
                    for (ModeloDocumentos mDocumentosMostrar : mdEstados.mostrarDocsAprobados(fkId)) {
                        out.println(mDocumentosMostrar.getFactura() + "," + mDocumentosMostrar.getPoder()
                                + "," + mDocumentosMostrar.getIdentificacion() + "," + mDocumentosMostrar.getSituacion()
                                + "," + mDocumentosMostrar.getCurp() + "," + mDocumentosMostrar.getEstado() + ","
                                + mDocumentosMostrar.getTenencia() + "," + mDocumentosMostrar.getBaja() + ","
                                + mDocumentosMostrar.getTarjeta() + "," + mDocumentosMostrar.getPoliza() + ","
                                + mDocumentosMostrar.getComprobante() + ",");
                    }
                    break;
                case "obtenerSesiones":
                    out.println("entra");
                    String usuario = (String) request.getAttribute("sesionUsuario");
                    out.print(usuario);
                    break;
                case "mostrarTabla":
                    DAOTablaDocumentos dtDocumentos = new DAOTablaDocumentos();
                    String idRegistro = request.getParameter("idRegistro");
                    // todos tienen el mismo id porque son un grupo
                    for (ModeloGuardarImagen dgImagenes : dtDocumentos.getDocumentos(idRegistro)) {
                        out.print(dgImagenes.getIdImagen() + "-_/");
                        out.print(dgImagenes.getNombreImagen() + "-_/");
                        out.print(dgImagenes.getFechaCarga() + "-_/");
                        out.print(dgImagenes.getNombreOriginal() + "/_-");
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
