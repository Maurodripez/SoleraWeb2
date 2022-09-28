
package Controlador;

import java.io.IOException;
import java.sql.Connection;

import Modelo.Conexion;
import Modelo.UsuariosModelo;
import java.util.logging.Level;
import java.util.logging.Logger;

import DAO.LoginDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Mauricio
 */
@WebServlet(name = "LoginControlador", urlPatterns = { "/LoginControlador" })
public class LoginControlador extends HttpServlet {
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
        // http://www.jtech.ua.es/j2ee/restringido/cw/sesion04-apuntes.html
        // https://www.lawebdelprogramador.com/foros/JavaScript/1532599-Cargar-una-imagen-en-la-web-con-un-input-file.html
        // http://www.javahispano.org/java-ee/post/2326578
        // https://www.arquitecturajava.com/usando-java-session-en-aplicaciones-web/
        try {

            UsuariosModelo uModelo = new UsuariosModelo();
            LoginDAO lDAO = new LoginDAO();
            boolean respuesta = false;
            if (request.getParameter("btnIngresar") != null) {// hacemos la consulta si se apreto el boton de iniciar
                                                              // sesion
                String usuario = request.getParameter("txtUsuario");
                String contrasena = request.getParameter("txtPassword");
                uModelo.setUsuario(usuario);
                uModelo.setContrasena(contrasena);
                try {
                    respuesta = lDAO.InicioSesion(uModelo);
                } catch (Exception e) {
                    Logger.getLogger(LoginControlador.class.getName()).log(Level.SEVERE, null, e);
                    // TODO: handle exception
                }
                if (respuesta == true) {
                    HttpSession misession = request.getSession(true);
                    misession.setAttribute("usuario", usuario);
                    request.getSession().setAttribute("usuarioActivo", uModelo.getUsuario());
                    request.getSession().setAttribute("Privilegios", uModelo.getPrivilegios());
                    request.setAttribute("Usuario", uModelo);
                    response.sendRedirect("/SoleraWeb/Principal.jsp?respuesta=" + respuesta);

                } else {
                    response.sendRedirect("/SoleraWeb/index.jsp?respuesta=");
                }
            }
        } catch (IOException e) {
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
