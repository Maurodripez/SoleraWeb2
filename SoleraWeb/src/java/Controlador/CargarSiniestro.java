package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.*;
import com.google.gson.annotations.SerializedName;

/**
 *
 * @author SEAS
 */
@MultipartConfig
@WebServlet(name = "CargarSiniestro", urlPatterns = {"/CargarSiniestro"})
public class CargarSiniestro extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            Part archivo = request.getPart("nombrearchivo");
            Object ob = new JSONParser().parse(new FileReader("JSONFile.json"));
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CargarSiniestro</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CargarSiniestro at" + archivo.getSubmittedFileName() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    public class Animal {

        @SerializedName("nombre")
        public String nombre;

    }
}
