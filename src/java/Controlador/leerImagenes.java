package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import DAO.DAOGuardarImagenes;

/**
 *
 * @author SEAS
 */
@WebServlet(name = "leerImagenes", urlPatterns = { "/leerImagenes" })
public class leerImagenes extends HttpServlet {

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
            String idRegistro = request.getParameter("idRegistro");
            String guardarImagen = request.getParameter("guardarImagen");
            String nombreDocumento = request.getParameter("nombreDocumento") + ".txt";
            // File doc = new File(
            // "C:\\Users\\death\\Desktop\\Solera Web
            // 2\\SoleraWeb2\\SoleraWeb\\web\\ImagenesVideo\\imagenes.txt");
            File doc = new File("C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\ImagenesVideo\\imagenes.txt");
            if ("guardarImagen".equals(guardarImagen)) {
                int respuestaGuardar = -1;
                DAOGuardarImagenes dgImagenes = new DAOGuardarImagenes();
                // se obtiene la imagen que esta en ese momento y se gfurdar y se manda a llmar
                // a l bd
                // Path origenPath = Paths
                // .get("C:/Users/death/Desktop/Solera Web
                // 2/SoleraWeb2/SoleraWeb/web/ImagenesVideo/imagenes.txt");
                // Path destinoPath = Paths.get("C:/Users/death/Desktop/Solera Web
                // 2/SoleraWeb2/SoleraWeb/web/documentos/"
                // + idRegistro + "/" + nombreDocumento + ".txt");
                Path origenPath = Paths.get("C:/Users/SEAS/Desktop/SoleraWeb/SoleraWeb/web/ImagenesVideo/imagenes.txt");
                String rutaImagenes = "C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\" + idRegistro
                        + "\\"+nombreDocumento+"";
                Path destinoPath = Paths.get("C:/Users/SEAS/Desktop/SoleraWeb/SoleraWeb/web/documentos/" +
                        idRegistro
                        + "/" + idRegistro + "" + nombreDocumento);
                // sobreescribir el fichero de destino si existe y lo copia
                Files.copy(origenPath, destinoPath, StandardCopyOption.REPLACE_EXISTING);
                respuestaGuardar = dgImagenes.guardarImagen(nombreDocumento, rutaImagenes, idRegistro,
                        idRegistro + "" + nombreDocumento);
                out.println(respuestaGuardar);
                out.println("Guardada con exito");
            } else {
                BufferedReader obj = new BufferedReader(new FileReader(doc));
                String strng;
                // se recore la imagen para mostrarla en pantalla con ajax
                while ((strng = obj.readLine()) != null)
                    out.println(strng);
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
