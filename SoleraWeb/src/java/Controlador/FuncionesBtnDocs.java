package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOTablaDocumentos;

@WebServlet(urlPatterns = { "/FuncionesBtnDocs" })
public class FuncionesBtnDocs extends HttpServlet {

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
            String fkId = request.getParameter("fkId");
            String idImagen = request.getParameter("idImagen");
            String nombreArchivo = request.getParameter("nombreArchivo");
            switch (accion) {
                case "Eliminar":
                //se elimina la imagen y el registro 
                    File archivoEliminar = new File(
                            "C:/Users/SEAS/Desktop/SoleraWeb/SoleraWeb/web/documentos/" + fkId + "/" + nombreArchivo
                                    + ""); //se obtine la direccion del archivo para eliminar
                    boolean estatus = archivoEliminar.delete(); //se elimina con esta funcion
                    DAOTablaDocumentos dtDocumentos = new DAOTablaDocumentos();
                    String respuesta = "no entra";
                    respuesta = dtDocumentos.EliminarImagen(idImagen);

                    if (!estatus) {

                        out.println("Error no se ha podido eliminar el  archivo");
                        out.println(respuesta);
                    } else {

                        out.println("Se ha eliminado el archivo exitosamente");
                        out.println(respuesta);
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
