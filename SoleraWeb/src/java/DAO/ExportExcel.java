package DAO;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import java.io.IOException;
import java.sql.SQLException;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class ExportExcel {

    Conexion conect = new Conexion();
    File file = new File("C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\json\\datos.xls");
    // File file = new File("/home/admin/Documentos/SoleraWeb/web/json/datos.xls");
    String r = "0";

    public String WriteExcel(String fechaInicio, String fechafinal) throws WriteException {
        int row = 0;
        WritableSheet excelSheet = null;
        WritableWorkbook workbook = null;
        try {
            workbook = Workbook.createWorkbook(file);
            workbook.createSheet("datos", 0);
            excelSheet = workbook.getSheet(0);
            r = "1";
        } catch (IOException | IndexOutOfBoundsException e) {
            // TODO: handle exception
        }
        String sql = "select numSiniestro, poliza, afectado, tipoDeCaso, cobertura, fechaSiniestro, estado, ciudad, region, "
                + " ubicacionTaller, regimenFiscal, estatusCliente, comentariosCliente, fechaCarga, usuarioCarga, "
                + " estatusSeguimientoSin, usuarioAsignadoSin, fechaAsignacion, fechaSeguimiento, "
                + " comentarios, marca, tipo, modelo, numSerie, valorIndemnizacion, valorComercial, "
                + " placas, telefonoPrincipal, telefonosecundario, contacto, correo, asegurado, correoContacto, telContacto "
                + " from infosiniestro as isin, fechasseguimiento as fs, infoauto as ia, infocliente as ic where idRegistro = fs.fkidRegistro "
                + " and idRegistro=ia.fkIdRegistro and idRegistro=ic.fkIdRegistro and fechaSeguimiento>='" + fechaInicio
                + "' and fechaSeguimiento<='" + fechafinal + "'";
        try {
            PreparedStatement ps;
            ResultSet rs;
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            r = "2";
            boolean encabezado = true;
            while (rs.next()) {
                if (encabezado == true) {
                    WritableCellFormat cFormat = new WritableCellFormat();
                    WritableFont font = new WritableFont(WritableFont.ARIAL, 12, WritableFont.BOLD);
                    cFormat.setFont(font);
                    Label numSiniestro = new Label(0, row, "Siniestro",cFormat);
                    Label poliza = new Label(1, row, "poliza",cFormat);
                    Label afectado = new Label(2, row, "afectado",cFormat);
                    Label tipoDeCaso = new Label(3, row, "tipoDeCaso",cFormat);
                    Label cobertura = new Label(4, row, "cobertura",cFormat);
                    Label fechaSiniestro = new Label(5, row, "fechaSiniestro",cFormat);
                    Label estado = new Label(6, row, "estado",cFormat);
                    Label ciudad = new Label(7, row, "ciudad",cFormat);
                    Label region = new Label(8, row, "region",cFormat);
                    Label ubicacionTaller = new Label(9, row, "ubicacionTaller",cFormat);
                    Label regimenFiscal = new Label(10, row, "regimenFiscal",cFormat);
                    Label estatusCliente = new Label(11, row, "estatusCliente",cFormat);
                    Label comentariosCliente = new Label(12, row, "comentariosCliente",cFormat);
                    Label fechaCarga = new Label(13, row, "fechaCarga",cFormat);
                    Label usuarioCarga = new Label(14, row, "usuarioCarga",cFormat);
                    Label estatusSeguimientoSin = new Label(15, row, "estatusSeguimientoSin",cFormat);
                    Label usuarioAsignadoSin = new Label(16, row, "usuarioAsignadoSin",cFormat);
                    Label fechaAsignacion = new Label(17, row, "fechaAsignacion",cFormat);
                    Label fechaSeguimiento = new Label(18, row, "fechaSeguimiento",cFormat);
                    Label comentarios = new Label(19, row, "comentarios",cFormat);
                    Label marca = new Label(20, row, "marca",cFormat);
                    Label tipo = new Label(21, row, "tipo",cFormat);
                    Label modelo = new Label(22, row, "modelo",cFormat);
                    Label numSerie = new Label(23, row, "numSerie",cFormat);
                    Label valorIndemnizacion = new Label(24, row, "valorIndemnizacion",cFormat);
                    Label valorComercial = new Label(25, row, "valorComercial",cFormat);
                    Label placas = new Label(26, row, "placas",cFormat);
                    Label telefonoPrincipal = new Label(27, row, "telefonoPrincipal",cFormat);
                    Label telefonosecundario = new Label(28, row, "telefonosecundario",cFormat);
                    Label contacto = new Label(29, row, "contacto",cFormat);
                    Label correo = new Label(30, row, "correo",cFormat);
                    Label asegurado = new Label(31, row, "asegurado",cFormat);
                    Label correoContacto = new Label(32, row, "correoContacto",cFormat);
                    Label telContacto = new Label(33, row, "telContacto",cFormat);
                    excelSheet.addCell(numSiniestro);
                    excelSheet.addCell(poliza);
                    excelSheet.addCell(afectado);
                    excelSheet.addCell(tipoDeCaso);
                    excelSheet.addCell(cobertura);
                    excelSheet.addCell(fechaSiniestro);
                    excelSheet.addCell(estado);
                    excelSheet.addCell(ciudad);
                    excelSheet.addCell(region);
                    excelSheet.addCell(ubicacionTaller);
                    excelSheet.addCell(regimenFiscal);
                    excelSheet.addCell(estatusCliente);
                    excelSheet.addCell(comentariosCliente);
                    excelSheet.addCell(fechaCarga);
                    excelSheet.addCell(usuarioCarga);
                    excelSheet.addCell(estatusSeguimientoSin);
                    excelSheet.addCell(usuarioAsignadoSin);
                    excelSheet.addCell(fechaAsignacion);
                    excelSheet.addCell(fechaSeguimiento);
                    excelSheet.addCell(comentarios);
                    excelSheet.addCell(marca);
                    excelSheet.addCell(tipo);
                    excelSheet.addCell(numSerie);
                    excelSheet.addCell(valorIndemnizacion);
                    excelSheet.addCell(valorComercial);
                    excelSheet.addCell(placas);
                    excelSheet.addCell(telefonoPrincipal);
                    excelSheet.addCell(telefonosecundario);
                    excelSheet.addCell(contacto);
                    excelSheet.addCell(correo);
                    excelSheet.addCell(asegurado);
                    excelSheet.addCell(correoContacto);
                    excelSheet.addCell(telContacto);
                    encabezado = false;
                    row++;
                }
                Label numSiniestro = new Label(0, row, rs.getString("numSiniestro"));
                Label poliza = new Label(1, row, rs.getString("poliza"));
                Label afectado = new Label(2, row, rs.getString("afectado"));
                Label tipoDeCaso = new Label(3, row, rs.getString("tipoDeCaso"));
                Label cobertura = new Label(4, row, rs.getString("cobertura"));
                Label fechaSiniestro = new Label(5, row, rs.getString("fechaSiniestro"));
                Label estado = new Label(6, row, rs.getString("estado"));
                Label ciudad = new Label(7, row, rs.getString("ciudad"));
                Label region = new Label(8, row, rs.getString("region"));
                Label ubicacionTaller = new Label(9, row, rs.getString("ubicacionTaller"));
                Label regimenFiscal = new Label(10, row, rs.getString("regimenFiscal"));
                Label estatusCliente = new Label(11, row, rs.getString("estatusCliente"));
                Label comentariosCliente = new Label(12, row, rs.getString("comentariosCliente"));
                Label fechaCarga = new Label(13, row, rs.getString("fechaCarga"));
                Label usuarioCarga = new Label(14, row, rs.getString("usuarioCarga"));
                Label estatusSeguimientoSin = new Label(15, row, rs.getString("estatusSeguimientoSin"));
                Label usuarioAsignadoSin = new Label(16, row, rs.getString("usuarioAsignadoSin"));
                Label fechaAsignacion = new Label(17, row, rs.getString("fechaAsignacion"));
                Label fechaSeguimiento = new Label(18, row, rs.getString("fechaSeguimiento"));
                Label comentarios = new Label(19, row, rs.getString("comentarios"));
                Label marca = new Label(20, row, rs.getString("marca"));
                Label tipo = new Label(21, row, rs.getString("tipo"));
                Label modelo = new Label(22, row, rs.getString("modelo"));
                Label numSerie = new Label(23, row, rs.getString("numSerie"));
                Label valorIndemnizacion = new Label(24, row, rs.getString("valorIndemnizacion"));
                Label valorComercial = new Label(25, row, rs.getString("valorComercial"));
                Label placas = new Label(26, row, rs.getString("placas"));
                Label telefonoPrincipal = new Label(27, row, rs.getString("telefonoPrincipal"));
                Label telefonosecundario = new Label(28, row, rs.getString("telefonosecundario"));
                Label contacto = new Label(29, row, rs.getString("contacto"));
                Label correo = new Label(30, row, rs.getString("correo"));
                Label asegurado = new Label(31, row, rs.getString("asegurado"));
                Label correoContacto = new Label(32, row, rs.getString("correoContacto"));
                Label telContacto = new Label(33, row, rs.getString("telContacto"));
                row++;
                r = "3";
                try {
                    excelSheet.addCell(numSiniestro);
                    excelSheet.addCell(poliza);
                    excelSheet.addCell(afectado);
                    excelSheet.addCell(tipoDeCaso);
                    excelSheet.addCell(cobertura);
                    excelSheet.addCell(fechaSiniestro);
                    excelSheet.addCell(estado);
                    excelSheet.addCell(ciudad);
                    excelSheet.addCell(region);
                    excelSheet.addCell(ubicacionTaller);
                    excelSheet.addCell(regimenFiscal);
                    excelSheet.addCell(estatusCliente);
                    excelSheet.addCell(comentariosCliente);
                    excelSheet.addCell(fechaCarga);
                    excelSheet.addCell(usuarioCarga);
                    excelSheet.addCell(estatusSeguimientoSin);
                    excelSheet.addCell(usuarioAsignadoSin);
                    excelSheet.addCell(fechaAsignacion);
                    excelSheet.addCell(fechaSeguimiento);
                    excelSheet.addCell(comentarios);
                    excelSheet.addCell(marca);
                    excelSheet.addCell(tipo);
                    excelSheet.addCell(numSerie);
                    excelSheet.addCell(valorIndemnizacion);
                    excelSheet.addCell(valorComercial);
                    excelSheet.addCell(placas);
                    excelSheet.addCell(telefonoPrincipal);
                    excelSheet.addCell(telefonosecundario);
                    excelSheet.addCell(contacto);
                    excelSheet.addCell(correo);
                    excelSheet.addCell(asegurado);
                    excelSheet.addCell(correoContacto);
                    excelSheet.addCell(telContacto);
                    r = "4";
                } catch (WriteException e) {
                    // TODO: handle exception
                }
            }
            rs.close();
        } catch (SQLException e) {
            // TODO: handle exception
        }
        try {
            workbook.write();
            workbook.close();
            r = "5";
        } catch (IOException | WriteException e) {
            // TODO: handle exception
        }
        r = "6";
        return r;
    }
}
