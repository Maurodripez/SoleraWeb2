
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
                    for (ModeloGuardarImagen dgImagenes : dtDocumentos.getDocumentos(idRegistro)) {
                        out.println("<tr class='row'>");
                        out.println("<td class='col'>"
                                + "<div class='btn-group' role='group'>"
                                + "<div>"
                                + "<div class='btn-group-vertical'>"
                                + "<input type='radio' class='btn-check' name='btnOpciones' value='"
                                + dgImagenes.getNombreOriginal() + "' onclick='funcionesBoton(this.id)' id='"
                                + dgImagenes.getIdImagen() + "' autocomplete='off'>"
                                + "<label class='btn btn-outline-danger' for='idVer'><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' width='24' height='24'>"
                                + "<path d='M15.5 12a3.5 3.5 0 11-7 0 3.5 3.5 0 017 0z'></path><path fill-rule='evenodd' d='M12 3.5c-3.432 0-6.125 1.534-8.054 3.24C2.02 8.445.814"
                                + " 10.352.33 11.202a1.6 1.6 0 000 1.598c.484.85 1.69 2.758 3.616 4.46C5.876 18.966 8.568 20.5 12 20.5c3.432 0 6.125-1.534 8.054-3.24 1.926-1.704 "
                                + "3.132-3.611 3.616-4.461a1.6 1.6 0 000-1.598c-.484-.85-1.69-2.757-3.616-4.46C18.124 5.034 15.432 3.5 12 3.5zM1.633 11.945c.441-.774 1.551-2.528 "
                                + "3.307-4.08C6.69 6.314 9.045 5 12 5c2.955 0 5.309 1.315 7.06 2.864 1.756 1.553 2.866 3.307 3.307 4.08a.111.111 0 01.017.056.111.111 0 01-.017.056c-.441.774-1.551"
                                + " 2.527-3.307 4.08C17.31 17.685 14.955 19 12 19c-2.955 0-5.309-1.315-7.06-2.864-1.756-1.553-2.866-3.306-3.307-4.08A.11.11 0 011.616 12a.11.11 0 01.017-.055z'></path></svg>"
                                + "</label>"
                                + "<input type='radio' class='btn-check' name='btnOpciones' id='idConvertirPdf' autocomplete='off'>"
                                + "<label class='btn btn-outline-danger' for='idConvertirPdf'>Pdf</label>"
                                + "</div>"
                                + "<div class='btn-group-vertical'>"
                                + "<input type='radio' class='btn-check' name='btnOpciones' id='idDescarga' autocomplete='off'>"
                                + "<label class='btn btn-outline-danger' for='idDescarga'>Descargar</label>"
                                + "<input type='radio' class='btn-check' name='btnOpciones' id='idEliminar' autocomplete='off'>"
                                + "<label class='btn btn-outline-danger' for='idEliminar'>Eliminar</label>"
                                + "</div>"
                                + "</div>"
                                + "</div></td>");
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
