package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {

    public static String url = "jdbc:mysql://localhost:3306/solera";
    public static String usuario = "root";
    public static String clave = "";
    public static String clase = "com.mysql.cj.jdbc.Driver";
    PreparedStatement pStatement;
    ResultSet rs;
    public Connection conexion = null;

    public Connection conectar() {// se realiza la conexion hacia la base de datos
        try {
            Class.forName(clase);
            conexion = (Connection) DriverManager.getConnection(url, usuario, clave);
            System.out.println("Conexion establecida..");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return conexion;
    }
    public void Desconectar() throws SQLException{
    pStatement.close();
    }


}
