package Controlador;

import DAO.DAOGuardarImagenes;
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
@WebServlet(name = "GuardarImagenesCliente", urlPatterns = { "/GuardarImagenesCliente" })
public class GuardarImagenesCliente extends HttpServlet {

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
      Part archivo = request.getPart("imagen");
      String fkGuardar = request.getParameter("fkImagenes");
      String[] sinComas = fkGuardar.split(",");
      // se obtienen la direccion real para poder obtenerla de la web
      File directorio = new File("C:/Users/SEAS/Desktop/SoleraWeb/SoleraWeb/web/documentos/" + sinComas[0] + "");
      if (!directorio.exists()) {
        if (directorio.mkdirs()) {
          System.out.println("Directorio creado");
        } else {
          System.out.println("Error al crear directorio");
        }
      } // se crea el directorio para caada caso
      InputStream input = archivo.getInputStream();
      String ruta = "C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\" + sinComas[0] + "\\";
      // https://www.facebook.com/uAdrianRosales/videos/como-guardar-una-imagen-con-servletsjsp-ajax-y-mysql-uso-de-multipartform-data-p/914999155682598/
      File cargarImagenes = new File(ruta);
      File doc = new File(cargarImagenes, archivo.getSubmittedFileName());
       Files.copy(input, doc.toPath()); // guardsmos el archiuvo en
      // la carpeta seleccionada
       dGImagenes.guardarImagen(sinComas[1], ruta + "" +
       archivo.getSubmittedFileName(), sinComas[0],
       archivo.getSubmittedFileName());
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