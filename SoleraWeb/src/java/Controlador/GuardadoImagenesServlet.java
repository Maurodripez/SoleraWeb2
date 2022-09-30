
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
import java.nio.file.Paths;

import javax.sql.rowset.serial.SerialException;

import DAO.DAOGuardarImagenes;
import Modelo.ModeloGuardarImagen;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;

@MultipartConfig
@WebServlet(name = "GuardadoImagenesServlet", urlPatterns = { "/GuardadoImagenesServlet" })
public class GuardadoImagenesServlet extends HttpServlet {
    private DAOGuardarImagenes dGImagenes = new DAOGuardarImagenes();
    private String rutaImagenes = "C:\\Users\\death\\Desktop\\Solera Web 2\\SoleraWeb2\\SoleraWeb\\web\\documentos\\";
    private File cargasImagenes = new File(rutaImagenes);
    private String[] extensiones = { ".ico", ".png", ".jpg", ".jpeg" };

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws SerialException, IOException {
        String accion = request.getParameter("accion");
        switch (accion) {
            case "agregar":
                guardarArchivo(request, response);
                break;
            default:
                break;
        }
    }

    private void guardarArchivo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String nombre = request.getParameter("tipoArchivo");
            Part archivo = request.getPart("archivo");
            if (archivo != null) {
                System.out.println("Selecciona un archivo");
                return;
            }
            if (validarExtenciones(archivo.getSubmittedFileName(), extensiones)) {
                String rutaImagen = guardarDoc(archivo, cargasImagenes);
                ModeloGuardarImagen mgImagen = new ModeloGuardarImagen(nombre, rutaImagen);
                dGImagenes.guardarImagen(mgImagen);

            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        response.sendRedirect("/SoleraWeb/Principal.jsp");

    }

    // metoddo para guardar el archivo///////////
    private String guardarDoc(Part part, File rutaCargas) {
        String rutaAbsoluta = "";
        try {
            // se obtiene el nobre del archivo
            Path ruta = Paths.get(part.getSubmittedFileName());// aqui tenemos nombrew del archivo
            String nombreArchivo = ruta.getFileName().toString();// tenemos el archivo
            InputStream input = part.getInputStream();
            if (input != null) {
                File doc = new File(rutaCargas, nombreArchivo);
                rutaAbsoluta = doc.getAbsolutePath();
                Files.copy(input, doc.toPath());// guardsmos el archiuvo en la carpeta seleccionada
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rutaAbsoluta;
    }

    public boolean validarExtenciones(String nombreArchivo, String[] extensiones) {
        for (String et : extensiones) {
            if (nombreArchivo.toLowerCase().endsWith(et)) {
                return true;

            } else {
                return false;
            }
        }

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String context = request.getServletContext().getRealPath("iconos");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
