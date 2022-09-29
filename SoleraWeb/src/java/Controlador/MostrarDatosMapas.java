package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.DAOConsultasMapas;
import Modelo.ModeloEstados;

@WebServlet(urlPatterns = { "/MostrarDatosMapas" })
public class MostrarDatosMapas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            DAOConsultasMapas daoCMapa = new DAOConsultasMapas();
            // out.println("correcto");
            String consulta = request.getParameter("consulta");
            switch (consulta) {
                case "cambioColores":
                    for (ModeloEstados mEstados : daoCMapa.getNumeroSiniestros()) {
                        out.print(mEstados.getEstados()+","+mEstados.getCantidad()+",");
                    }
                    break;
                    case "resultadosEstacion":
                    
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
