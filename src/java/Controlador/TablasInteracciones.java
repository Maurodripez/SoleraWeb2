package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOTablaHistorica;
import Modelo.ModeloTablaSeguimiento;

@WebServlet(name = "TablasInteracciones", urlPatterns = { "/TablasInteracciones" })
public class TablasInteracciones extends HttpServlet {

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
            String accion = request.getParameter("accion");
            switch (accion) {
                case "TablaHistorica":
                    String r;
                    String idRegistro = request.getParameter("inputNombreFk");
                    DAOTablaHistorica dtHistorica = new DAOTablaHistorica();
                    r = dtHistorica.getHistorico(idRegistro);
                    out.print(r);
                    break;
                case "tablaSeguimiento":
                DAOTablaHistorica dtHistorica2 = new DAOTablaHistorica();
                idRegistro = request.getParameter("idRegistro");
                    for (ModeloTablaSeguimiento mtSeguimiento : dtHistorica2.getSeguimiento(idRegistro)) {
                        out.print(mtSeguimiento.getComentarios() + "-_/");
                        out.print(mtSeguimiento.getEstacionPrincipal() + "-_/");
                        out.print(mtSeguimiento.getEstatusSeguimiento() + "-_/");
                        out.print(mtSeguimiento.getSubEstatus() + "-_/");
                        out.print(mtSeguimiento.getRespuestaSolera() + "-_/");
                        out.print(mtSeguimiento.getPersonaContactada() + "-_/");
                        out.print(mtSeguimiento.getTipodePersona() + "-_/");
                        out.print(mtSeguimiento.getContacto() + "-_/");
                        out.print(mtSeguimiento.getIntegraciondeexpediente() + "-_/");
                        out.print(mtSeguimiento.getFacturaciondeservicio() + "-_/");
                        out.print(mtSeguimiento.getTermino() + "-_/");
                        out.print(mtSeguimiento.getFechaseguimiento() + "-_/");
                        out.print(mtSeguimiento.getUsuario() + "-_/");
                        out.print(mtSeguimiento.getFechaasigncion() + "-_/");
                        out.print(mtSeguimiento.getFkIdRegistroSegPrincipal() + "-_/");
                        out.print(mtSeguimiento.getUsuarioAsignado() + "/_-");
                    }
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
