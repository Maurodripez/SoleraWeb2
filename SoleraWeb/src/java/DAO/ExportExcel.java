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
}
