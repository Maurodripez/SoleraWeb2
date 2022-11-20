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
        String sql = "select isin.numSiniestro, poliza, estado, ciudad, region, estatusCliente,"
                + " estatusSeguimiento, usuario, sp.fechaseguimiento, sp.comentarios, marca, tipo, modelo, numSerie, asegurado"
                + " from infosiniestro as isin, infoauto as ia, infocliente as ic, seguimientoprincipal as sp "
                + " where idRegistro=ia.fkIdRegistro and sp.fkIdRegistroSegPrincipal=idRegistro "
                + " and idRegistro=ic.fkIdRegistro and fechaSeguimiento>='" + fechaInicio + "' and fechaSeguimiento<='"
                + fechafinal + "'";
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
                    Label numSiniestro = new Label(0, row, "Siniestro", cFormat);
                    Label poliza = new Label(1, row, "poliza", cFormat);
                    Label estado = new Label(6, row, "estado", cFormat);
                    Label ciudad = new Label(7, row, "ciudad", cFormat);
                    Label region = new Label(8, row, "region", cFormat);
                    Label estatusCliente = new Label(11, row, "estatusCliente", cFormat);
                    Label estatusSeguimiento = new Label(15, row, "estatusSeguimiento", cFormat);
                    Label usuario = new Label(16, row, "usuario", cFormat);
                    Label fechaseguimiento = new Label(18, row, "fechaseguimiento", cFormat);
                    Label comentarios = new Label(19, row, "comentarios", cFormat);
                    Label marca = new Label(20, row, "marca", cFormat);
                    Label tipo = new Label(21, row, "tipo", cFormat);
                    Label modelo = new Label(22, row, "modelo", cFormat);
                    Label numSerie = new Label(23, row, "numSerie", cFormat);
                    Label asegurado = new Label(31, row, "asegurado", cFormat);
                    excelSheet.addCell(numSiniestro);
                    excelSheet.addCell(poliza);
                    excelSheet.addCell(estado);
                    excelSheet.addCell(ciudad);
                    excelSheet.addCell(region);
                    excelSheet.addCell(estatusCliente);
                    excelSheet.addCell(estatusSeguimiento);
                    excelSheet.addCell(usuario);
                    excelSheet.addCell(fechaseguimiento);
                    excelSheet.addCell(comentarios);
                    excelSheet.addCell(marca);
                    excelSheet.addCell(tipo);
                    excelSheet.addCell(numSerie);
                    excelSheet.addCell(asegurado);
                    encabezado = false;
                    row++;
                }
                Label numSiniestro = new Label(0, row, rs.getString("numSiniestro"));
                Label poliza = new Label(1, row, rs.getString("poliza"));
                Label estado = new Label(6, row, rs.getString("estado"));
                Label ciudad = new Label(7, row, rs.getString("ciudad"));
                Label region = new Label(8, row, rs.getString("region"));
                Label estatusCliente = new Label(11, row, rs.getString("estatusCliente"));
                Label estatusSeguimiento = new Label(15, row, rs.getString("estatusSeguimiento"));
                Label usuario = new Label(16, row, rs.getString("usuario"));
                Label fechaseguimiento = new Label(18, row, rs.getString("fechaseguimiento"));
                Label comentarios = new Label(19, row, rs.getString("comentarios"));
                Label marca = new Label(20, row, rs.getString("marca"));
                Label tipo = new Label(21, row, rs.getString("tipo"));
                Label modelo = new Label(22, row, rs.getString("modelo"));
                Label numSerie = new Label(23, row, rs.getString("numSerie"));
                Label asegurado = new Label(31, row, rs.getString("asegurado"));
                row++;
                r = "3";
                try {
                    excelSheet.addCell(numSiniestro);
                    excelSheet.addCell(poliza);
                    excelSheet.addCell(estado);
                    excelSheet.addCell(ciudad);
                    excelSheet.addCell(region);
                    excelSheet.addCell(estatusCliente);
                    excelSheet.addCell(estatusSeguimiento);
                    excelSheet.addCell(usuario);
                    excelSheet.addCell(fechaseguimiento);
                    excelSheet.addCell(comentarios);
                    excelSheet.addCell(marca);
                    excelSheet.addCell(tipo);
                    excelSheet.addCell(modelo);
                    excelSheet.addCell(numSerie);
                    excelSheet.addCell(asegurado);
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

    public String ExcelSiniestros(String fechaInicio, String fechafinal) throws WriteException {
        // File fileSiniestros = new
        // File("C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\json\\siniestros.xls");
        File fileSiniestros = new File(
                "C:\\Users\\death\\Desktop\\Solera\\SoleraWeb2\\SoleraWeb\\web\\json\\siniestros.xls");
        int row = 0;
        WritableSheet excelSheet = null;
        WritableWorkbook workbook = null;
        try {
            workbook = Workbook.createWorkbook(fileSiniestros);
            workbook.createSheet("datos", 0);
            excelSheet = workbook.getSheet(0);
            r = "1";
        } catch (IOException | IndexOutOfBoundsException e) {
            // TODO: handle exception
        }
        String sql = " select * from infosiniestro,infoauto as ia,infocliente as ic, seguimientoprincipal as sp "
                + " where idRegistro=ia.fkIdRegistro and idRegistro=ic.fkIdRegistro and idRegistro=sp.fkIdRegistroSegPrincipal "
                + " and fechaseguimiento>='" + fechaInicio + "' and fechaseguimiento<='" + fechafinal
                + "' group by idRegistro";
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
                    Label numSiniestro = new Label(0, row, "numSiniestro", cFormat);
                    Label poliza = new Label(1, row, "poliza", cFormat);
                    Label afectado = new Label(2, row, "afectado", cFormat);
                    Label tipoDeCaso = new Label(3, row, "tipoDeCaso", cFormat);
                    Label cobertura = new Label(4, row, "cobertura", cFormat);
                    Label fechaSiniestro = new Label(5, row, "fechaSiniestro", cFormat);
                    Label estado = new Label(6, row, "estado", cFormat);
                    Label ciudad = new Label(7, row, "ciudad", cFormat);
                    Label ubicacionTaller = new Label(8, row, "ubicacionTaller", cFormat);
                    Label financiado = new Label(9, row, "financiado", cFormat);
                    Label regimenFiscal = new Label(10, row, "regimenFiscal", cFormat);
                    Label estatusCliente = new Label(11, row, "estatusCliente", cFormat);
                    Label comentariosCliente = new Label(12, row, "comentariosCliente", cFormat);
                    Label datosAudatex = new Label(13, row, "datosAudatex", cFormat);
                    Label passwordExterno = new Label(14, row, "passwordExterno", cFormat);
                    Label fechaCarga = new Label(15, row, "fechaCarga", cFormat);
                    Label fechaDecreto = new Label(16, row, "fechaDecreto", cFormat);
                    Label usuarioCarga = new Label(17, row, "usuarioCarga", cFormat);
                    Label estatusSeguimientoSin = new Label(18, row, "estatusSeguimientoSin", cFormat);
                    Label usuarioAsignadoSin = new Label(19, row, "usuarioAsignadoSin", cFormat);
                    Label fechaAsignacion = new Label(20, row, "fechaAsignacion", cFormat);
                    Label marca = new Label(21, row, "marca", cFormat);
                    Label tipo = new Label(22, row, "tipo", cFormat);
                    Label modelo = new Label(23, row, "modelo", cFormat);
                    Label numSerie = new Label(24, row, "numSerie", cFormat);
                    Label valorIndemnizacion = new Label(25, row, "valorIndemnizacion", cFormat);
                    Label valorComercial = new Label(26, row, "valorComercial", cFormat);
                    Label placas = new Label(27, row, "placas", cFormat);
                    Label telefonoPrincipal = new Label(28, row, "telefonoPrincipal", cFormat);
                    Label telefonosecundario = new Label(29, row, "telefonosecundario", cFormat);
                    Label contacto = new Label(30, row, "contacto", cFormat);
                    Label correo = new Label(31, row, "correo", cFormat);
                    Label asegurado = new Label(32, row, "asegurado", cFormat);
                    Label correoContacto = new Label(33, row, "correoContacto", cFormat);
                    Label telContacto = new Label(34, row, "telContacto", cFormat);
                    Label usuario = new Label(35, row, "usuario", cFormat);
                    Label fechaseguimiento = new Label(36, row, "fechaseguimiento", cFormat);
                    Label estatusSeguimiento = new Label(37, row, "estatusSeguimiento", cFormat);
                    Label comentarios = new Label(38, row, "comentarios", cFormat);
                    Label estacionPrincipal = new Label(39, row, "estacionPrincipal", cFormat);
                    Label subEstatus = new Label(40, row, "subEstatus", cFormat);
                    Label respuestaSolera = new Label(41, row, "respuestaSolera", cFormat);
                    Label personaContactada = new Label(42, row, "personaContactada", cFormat);
                    Label tipodePersona = new Label(43, row, "tipodePersona", cFormat);
                    Label contactoSeg = new Label(44, row, "contactoSeg", cFormat);
                    Label integraciondeexpediente = new Label(45, row, "integraciondeexpediente", cFormat);
                    Label facturaciondeservicio = new Label(46, row, "facturaciondeservicio", cFormat);
                    Label termino = new Label(47, row, "termino", cFormat);
                    Label fechaasigncion = new Label(48, row, "fechaasigncion", cFormat);
                    Label usuarioAsignado = new Label(49, row, "usuarioAsignado", cFormat);
                    Label region = new Label(50, row, "region", cFormat);
                    excelSheet.addCell(numSiniestro);
                    excelSheet.addCell(poliza);
                    excelSheet.addCell(afectado);
                    excelSheet.addCell(tipoDeCaso);
                    excelSheet.addCell(cobertura);
                    excelSheet.addCell(fechaSiniestro);
                    excelSheet.addCell(estado);
                    excelSheet.addCell(ciudad);
                    excelSheet.addCell(ubicacionTaller);
                    excelSheet.addCell(financiado);
                    excelSheet.addCell(regimenFiscal);
                    excelSheet.addCell(estatusCliente);
                    excelSheet.addCell(comentariosCliente);
                    excelSheet.addCell(datosAudatex);
                    excelSheet.addCell(passwordExterno);
                    excelSheet.addCell(fechaCarga);
                    excelSheet.addCell(fechaDecreto);
                    excelSheet.addCell(usuarioCarga);
                    excelSheet.addCell(estatusSeguimientoSin);
                    excelSheet.addCell(usuarioAsignadoSin);
                    excelSheet.addCell(fechaAsignacion);
                    excelSheet.addCell(marca);
                    excelSheet.addCell(tipo);
                    excelSheet.addCell(modelo);
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
                    excelSheet.addCell(usuario);
                    excelSheet.addCell(fechaseguimiento);
                    excelSheet.addCell(estatusSeguimiento);
                    excelSheet.addCell(comentarios);
                    excelSheet.addCell(estacionPrincipal);
                    excelSheet.addCell(subEstatus);
                    excelSheet.addCell(respuestaSolera);
                    excelSheet.addCell(personaContactada);
                    excelSheet.addCell(tipodePersona);
                    excelSheet.addCell(contactoSeg);
                    excelSheet.addCell(integraciondeexpediente);
                    excelSheet.addCell(facturaciondeservicio);
                    excelSheet.addCell(termino);
                    excelSheet.addCell(fechaasigncion);
                    excelSheet.addCell(usuarioAsignado);
                    excelSheet.addCell(region);
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
                Label ubicacionTaller = new Label(8, row, rs.getString("ubicacionTaller"));
                Label financiado = new Label(9, row, rs.getString("financiado"));
                Label regimenFiscal = new Label(10, row, rs.getString("regimenFiscal"));
                Label estatusCliente = new Label(11, row, rs.getString("estatusCliente"));
                Label comentariosCliente = new Label(12, row, rs.getString("comentariosCliente"));
                Label datosAudatex = new Label(13, row, rs.getString("datosAudatex"));
                Label passwordExterno = new Label(14, row, rs.getString("passwordExterno"));
                Label fechaCarga = new Label(15, row, rs.getString("fechaCarga"));
                Label fechaDecreto = new Label(16, row, rs.getString("fechaDecreto"));
                Label usuarioCarga = new Label(17, row, rs.getString("usuarioCarga"));
                Label estatusSeguimientoSin = new Label(18, row, rs.getString("estatusSeguimientoSin"));
                Label usuarioAsignadoSin = new Label(19, row, rs.getString("usuarioAsignadoSin"));
                Label fechaAsignacion = new Label(20, row, rs.getString("fechaAsignacion"));
                Label marca = new Label(21, row, rs.getString("marca"));
                Label tipo = new Label(22, row, rs.getString("tipo"));
                Label modelo = new Label(23, row, rs.getString("modelo"));
                Label numSerie = new Label(24, row, rs.getString("numSerie"));
                Label valorIndemnizacion = new Label(25, row, rs.getString("valorIndemnizacion"));
                Label valorComercial = new Label(26, row, rs.getString("valorComercial"));
                Label placas = new Label(27, row, rs.getString("placas"));
                Label telefonoPrincipal = new Label(28, row, rs.getString("telefonoPrincipal"));
                Label telefonosecundario = new Label(29, row, rs.getString("telefonosecundario"));
                Label contacto = new Label(30, row, rs.getString("contacto"));
                Label correo = new Label(31, row, rs.getString("correo"));
                Label asegurado = new Label(32, row, rs.getString("asegurado"));
                Label correoContacto = new Label(33, row, rs.getString("correoContacto"));
                Label telContacto = new Label(34, row, rs.getString("telContacto"));
                Label usuario = new Label(35, row, rs.getString("usuario"));
                Label fechaseguimiento = new Label(36, row, rs.getString("fechaseguimiento"));
                Label estatusSeguimiento = new Label(37, row, rs.getString("estatusSeguimiento"));
                Label comentarios = new Label(38, row, rs.getString("comentarios"));
                Label estacionPrincipal = new Label(39, row, rs.getString("estacionPrincipal"));
                Label subEstatus = new Label(40, row, rs.getString("subEstatus"));
                Label respuestaSolera = new Label(41, row, rs.getString("respuestaSolera"));
                Label personaContactada = new Label(42, row, rs.getString("personaContactada"));
                Label tipodePersona = new Label(43, row, rs.getString("tipodePersona"));
                Label contactoSeg = new Label(44, row, rs.getString("contactoSeg"));
                Label integraciondeexpediente = new Label(45, row, rs.getString("integraciondeexpediente"));
                Label facturaciondeservicio = new Label(46, row, rs.getString("facturaciondeservicio"));
                Label termino = new Label(47, row, rs.getString("termino"));
                Label fechaasigncion = new Label(48, row, rs.getString("fechaasigncion"));
                Label usuarioAsignado = new Label(49, row, rs.getString("usuarioAsignado"));
                Label region = new Label(50, row, rs.getString("region"));
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
                    excelSheet.addCell(ubicacionTaller);
                    excelSheet.addCell(financiado);
                    excelSheet.addCell(regimenFiscal);
                    excelSheet.addCell(estatusCliente);
                    excelSheet.addCell(comentariosCliente);
                    excelSheet.addCell(datosAudatex);
                    excelSheet.addCell(passwordExterno);
                    excelSheet.addCell(fechaCarga);
                    excelSheet.addCell(fechaDecreto);
                    excelSheet.addCell(usuarioCarga);
                    excelSheet.addCell(estatusSeguimientoSin);
                    excelSheet.addCell(usuarioAsignadoSin);
                    excelSheet.addCell(fechaAsignacion);
                    excelSheet.addCell(marca);
                    excelSheet.addCell(tipo);
                    excelSheet.addCell(numSerie);
                    excelSheet.addCell(valorIndemnizacion);
                    excelSheet.addCell(placas);
                    excelSheet.addCell(telefonoPrincipal);
                    excelSheet.addCell(telefonosecundario);
                    excelSheet.addCell(contacto);
                    excelSheet.addCell(correo);
                    excelSheet.addCell(asegurado);
                    excelSheet.addCell(correoContacto);
                    excelSheet.addCell(telContacto);
                    excelSheet.addCell(usuario);
                    excelSheet.addCell(fechaseguimiento);
                    excelSheet.addCell(estatusSeguimiento);
                    excelSheet.addCell(comentarios);
                    excelSheet.addCell(estacionPrincipal);
                    excelSheet.addCell(subEstatus);
                    excelSheet.addCell(respuestaSolera);
                    excelSheet.addCell(personaContactada);
                    excelSheet.addCell(tipodePersona);
                    excelSheet.addCell(contactoSeg);
                    excelSheet.addCell(integraciondeexpediente);
                    excelSheet.addCell(facturaciondeservicio);
                    excelSheet.addCell(termino);
                    excelSheet.addCell(fechaasigncion);
                    excelSheet.addCell(usuarioAsignado);
                    excelSheet.addCell(region);
                    row++;
                    // r = "4";
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
            // r = "5";
        } catch (IOException | WriteException e) {
            // TODO: handle exception
        }
        // r = "6";
        return r;

    }
}
