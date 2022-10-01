
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOGuardarImagenes;
import DAO.DAOTablaDocumentos;
import DAO.MostrarDocumentosEstados;
import Modelo.ModeloDocumentos;
import Modelo.ModeloGuardarImagen;
import Modelo.UsuariosModelo;
import jakarta.servlet.http.HttpSession;

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
                    mDocumentos.setIdentificacion(request.getParameter("identificacion"));
                    mDocumentos.setComprobante(request.getParameter("comprobante"));
                    mDocumentos.setInfoAdicional(request.getParameter("infoAdicional"));
                    mDocumentos.setFactura(request.getParameter("factura"));
                    mDocumentos.setTenencias(request.getParameter("tenencia"));
                    mDocumentos.setBaja(request.getParameter("baja"));
                    mDocumentos.setEstadoDeCuenta(request.getParameter("estadoCuenta"));
                    mDocumentos.setDenuncia(request.getParameter("denuncia"));
                    mDocumentos.setAcreditacion(request.getParameter("acreditacion"));
                    mDocumentos.setId(request.getParameter("idRegistro"));
                    /* TODO output your page here. You may use following sample code. */
                    respuesta = mdEstados.actualizarDocsAprobados(mDocumentos);
                    out.println(respuesta);
                    break;
                case "mostrarDocsAprobados":
                    String fkId = request.getParameter("idRegistro");
                    for (ModeloDocumentos mDocumentosMostrar : mdEstados.mostrarDocsAprobados(fkId)) {
                        out.println(mDocumentosMostrar.getIdentificacion() + "," + mDocumentosMostrar.getComprobante()
                                + "," + mDocumentosMostrar.getInfoAdicional() + "," + mDocumentosMostrar.getFactura()
                                + "," + mDocumentosMostrar.getTenencias() + "," + mDocumentosMostrar.getBaja() + ","
                                + mDocumentosMostrar.getEstadoDeCuenta() + "," + mDocumentosMostrar.getDenuncia() + ","
                                + mDocumentosMostrar.getAcreditacion() + ",");
                    }
                    break;
                case "obtenerSesiones":
                    HttpSession sesion = request.getSession();
                    // https://www.arquitecturajava.com/usando-java-session-en-aplicaciones-web/
                    UsuariosModelo uModelos = new UsuariosModelo();
                    out.println(request.getSession().getId());
                    out.println(request.getRequestedSessionId());
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
                                + "' onclick='funcionesBoton(this.id)' onclick='funcionesBoton(this.id)' type='button' class='btn btn-primary'>Pdf</button>"
                                + "<button id='Descarga," + dgImagenes.getIdImagen() + ","
                                + dgImagenes.getNombreOriginal()
                                + "' onclick='funcionesBoton(this.id)' onclick='funcionesBoton(this.id)' type='button' class='btn btn-primary'>Descarga</button>"
                                + "<button id='Eliminar," + dgImagenes.getIdImagen() + ","
                                + dgImagenes.getNombreOriginal()
                                + "' onclick='funcionesBoton(this.id)'' onclick='funcionesBoton(this.id)' type='button' class='btn btn-danger'>Eliminar</button>"
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
