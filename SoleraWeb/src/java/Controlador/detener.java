
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.core.MediaType;
import java.io.File;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;

@Consumes(MediaType.MULTIPART_FORM_DATA)
@MultipartConfig
@WebServlet(name = "detener", urlPatterns = { "/detener" })
public class detener extends HttpServlet {

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
            Part archivo = request.getPart("imagen");
            out.println(archivo.length());
            if (archivo == null) {
                out.println("para detectaar");
            }
            InputStream input = archivo.getInputStream();
            File ruta = new File("C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\json\\"
                    + archivo.getSubmittedFileName() + "");
            // https://www.facebook.com/uAdrianRosales/videos/como-guardar-una-imagen-con-servletsjsp-ajax-y-mysql-uso-de-multipartform-data-p/914999155682598/
            Files.copy(input, ruta.toPath());// guardsmos el archiuvo en
                                             // la carpeta seleccionada
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet detener</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet detener at " + archivo.getSubmittedFileName() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
