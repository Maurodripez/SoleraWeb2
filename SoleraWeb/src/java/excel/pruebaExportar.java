package excel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class pruebaExportar {
        private void generarExcel() {
        HSSFWorkbook workbook = new excel.ExcelGenerator().generateExcel();
        JFileChooser fileChooser = new JFileChooser();
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Archivos Excel (*.xls)", "xls");
        fileChooser.setAcceptAllFileFilterUsed(false);
        fileChooser.setFileFilter(filter);
        fileChooser.setDialogTitle("GUARDAR ARCHIVO");
        if (fileChooser.showSaveDialog(this) == JFileChooser.APPROVE_OPTION) {

            try {
                File archivo = new File(fileChooser.getSelectedFile().getAbsolutePath());

                OutputStream out = null;
                if (getFileExtension(archivo)) {
                    out = new FileOutputStream(fileChooser.getSelectedFile().getAbsolutePath());
                } else {
                    out = new FileOutputStream(fileChooser.getSelectedFile().getAbsolutePath() + ".xls");
                }

                JOptionPane.showMessageDialog(this, "Archivo generado con éxito");

                workbook.write(out);
                workbook.close();
                out.flush();
                out.close();
            } catch (IOException ex) {
                Logger.getLogger(Principal.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

}
