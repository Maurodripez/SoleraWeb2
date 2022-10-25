
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
                        out.println("<tr class='row'>");
                        out.println("<td class='col'>"
                                + "<div class='btn-toolbar' role='toolbar' aria-label='Toolbar with button groups'>"
                                + "<div class='btn-group me-2' role='group' aria-label='First group'>"
                                + "<button id='Ver," + dgImagenes.getIdImagen() + "," + dgImagenes.getNombreOriginal()
                                + "' onclick='funcionesBoton(this.id)' type='button' class='btn btn-primary'>Ver</button>"
                                + "<button id='Pdf," + dgImagenes.getIdImagen() + "," + dgImagenes.getNombreOriginal()
                                + "," + dgImagenes.getFkImagen()
                                + "' onclick='convertirPDF(this.id)' type='button' class='btn btn-primary'>Pdf</button>"
                                + "<a href='./documentos/" + dgImagenes.getFkImagen() + "/"
                                + dgImagenes.getNombreOriginal() + "' download='cute.jpg'>"
                                + "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none'"
                                + " stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'"
                                + "class='feather feather-download'>"
                                + "<path d='M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'></path>"
                                + "<polyline points='7 10 12 15 17 10'></polyline>"
                                + "<line x1='12' y1='15' x2='12' y2='3'></line>"
                                + "</svg>"
                                + "</a>"
                                + "<button id='Eliminar," + dgImagenes.getIdImagen() + ","
                                + dgImagenes.getNombreOriginal()
                                + "," + dgImagenes.getFkImagen()
                                + "' onclick='funcionesBoton(this.id)'' onclick='funcionesBoton(this.id)' type='button' class='btnEliminarClass btn btn-danger' disabled>Eliminar</button>"
                                + "</div>"
                                + "</td>");
                        out.println(" <td class='col'>" + dgImagenes.getNombreImagen() + "</td>");
                        out.println(" <td class='col'>" + dgImagenes.getNombreOriginal() + "</td>");
                        out.println(" <td class='col'>" + dgImagenes.getFechaCarga() + "</td>");
                        out.println("</tr>");
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
