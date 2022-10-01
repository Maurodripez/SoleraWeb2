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

import DAO.DAOGuardarImagenes;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.concurrent.ThreadLocalRandom;

@MultipartConfig
@WebServlet(name = "GuardadoImagenesServlet", urlPatterns = { "/GuardadoImagenesServlet" })
public class GuardadoImagenesServlet extends HttpServlet {
    // private String rutaImagenes = "C:\\Users\\death\\Desktop\\Solera Web
    // 2\\SoleraWeb2\\SoleraWeb\\web\\documentos\\";
    DAOGuardarImagenes dGImagenes = new DAOGuardarImagenes();

    private final String[] extensiones = { ".ico", ".png", ".jpg", ".jpeg" };

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
        String fkGuardar = request.getParameter("fkImagenes");
                File directorio = new File("C:/Users/SEAS/Desktop/SoleraWeb/SoleraWeb/web/documentos/" + fkGuardar + "");
        if (!directorio.exists()) {
            if (directorio.mkdirs()) {
                System.out.println("Directorio creado");
            } else {
                System.out.println("Error al crear directorio");
            }
        }//se crea el directorio para caada caso
        String rutaImagenes = "C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\" + fkGuardar + "\\";
        File cargasImagenes = new File(rutaImagenes);
        try (PrintWriter out = response.getWriter()) {

            String nombre = request.getParameter("tipoArchivo");

            Part archivo = request.getPart("archivo");// nombre de la imagen

            if (archivo == null) {
                System.out.println("Selecciona un archivo");
                return;
            }
            if (validarExtenciones(archivo.getSubmittedFileName(), extensiones)) {
                String rutaImagen = guardarDoc(archivo, cargasImagenes);
                dGImagenes.guardarImagen(nombre, rutaImagen, fkGuardar, archivo.getSubmittedFileName());
                response.sendRedirect("ModuloPrincipal.jsp");
            }
        } catch (ServletException | IOException e) {
            // TODO: handle exception
        }

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
        } catch (IOException e) {
        }
        return rutaAbsoluta;
    }

    public boolean validarExtenciones(String nombreArchivo, String[] extensiones) {
        for (String et : extensiones) {
            if (nombreArchivo.toLowerCase().endsWith(et)) {
                return true;

            }
        }
        return false;
    }
}
