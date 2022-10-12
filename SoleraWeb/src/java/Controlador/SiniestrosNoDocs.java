package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOSiniestrosEnRespuesta;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "SiniestrosNoDocs", urlPatterns = { "/SiniestrosNoDocs" })
public class SiniestrosNoDocs extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        int de0a2 = 0;
        DAOSiniestrosEnRespuesta dseRespuesta = new DAOSiniestrosEnRespuesta();
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String accion = request.getParameter("accion");
            switch (accion) {
                case "SiniestrosEnRespuesta":
                    dseRespuesta.todosDias();
                    out.print(dseRespuesta.contador0a2 + ",");
                    out.print(dseRespuesta.contador3a5 + ",");
                    out.print(dseRespuesta.contador6a14 + ",");
                    out.print(dseRespuesta.contadormas15);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SiniestrosNoDocs.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
