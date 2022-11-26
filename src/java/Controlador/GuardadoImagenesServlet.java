package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import DAO.DAOGuardarImagenes;
import jakarta.servlet.http.Part;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.core.MediaType;
import java.nio.file.Files;

@Consumes(MediaType.MULTIPART_FORM_DATA)
@MultipartConfig
@WebServlet(name = "GuardadoImagenesServlet", urlPatterns = { "/GuardadoImagenesServlet" })
public class GuardadoImagenesServlet extends HttpServlet {

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
    DAOGuardarImagenes dGImagenes = new DAOGuardarImagenes();
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {
      out.println("0");
      Part archivo = request.getPart("imagen");
      String fkGuardar = request.getParameter("fkImagenes");
      String nombreArchivo = request.getParameter("tipoArchivo");
      // se obtienen la direccion real para poder obtenerla de la web
      // File directorio = new File("C:/Users/death/Desktop/Solera Web
      // 2/SoleraWeb2/SoleraWeb/web/documentos/" + fkGuardar + "");
      File directorio = new File("/home/admin/Documentos/SoleraWeb/web/documentos/" + fkGuardar + "");
      //File directorio = new File("C:/Users/SEAS/Desktop/SoleraWeb/SoleraWeb/web/documentos/" + fkGuardar + "");
      if (!directorio.exists()) {
        if (directorio.mkdirs()) {
          System.out.println("Directorio creado");
        } else {
          System.out.println("Error al crear directorio");
        }
      } // se crea el directorio para caada caso
      InputStream input = archivo.getInputStream();
      // String ruta = "C:\\Users\\death\\Desktop\\Solera Web
      // 2\\SoleraWeb2\\SoleraWeb\\web\\documentos\\" + fkGuardar + "\\";
      String ruta = "/home/admin/Documentos/SoleraWeb/web/documentos/" + fkGuardar + "/";
      //String ruta = "C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\" + fkGuardar + "\\";
      // https://www.facebook.com/uAdrianRosales/videos/como-guardar-una-imagen-con-servletsjsp-ajax-y-mysql-uso-de-multipartform-data-p/914999155682598/
      File cargarImagenes = new File(ruta);
      out.println(nombreArchivo);
      String nombreCorregidoArchivo = archivo.getSubmittedFileName().replaceAll("\\s", "-");
      File doc = new File(cargarImagenes, fkGuardar+nombreCorregidoArchivo);
      String archivoUnico = fkGuardar+nombreCorregidoArchivo;
      Files.copy(input, doc.toPath()); // guardsmos el archiuvo en
      // la carpeta seleccionada
      out.println("5");
      dGImagenes.guardarImagen(nombreArchivo, ruta + "" + archivoUnico, fkGuardar, archivoUnico);
      out.println("guardado con exito");
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
  protected void doPost(
      HttpServletRequest request,
      HttpServletResponse response)
      throws ServletException, IOException {
    processRequest(request, response);
  }
}
