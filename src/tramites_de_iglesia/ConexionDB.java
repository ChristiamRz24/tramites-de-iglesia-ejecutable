package tramites_de_iglesia;

import java.sql.*;
import javax.swing.JOptionPane;

public class ConexionDB {
    
    //Variables
    private String database = "jdbc:postgresql://localhost:5432/Tramites_de_iglesia";
    private String user = "openpg";
    private String password = "openpgpwd";
    
    //Getters y Setters
    public String getDatabase() { return database; }
    
    //Método
    public Connection conectarDB(String database, String dataUser, String dataPassword, Boolean flag) {
        Connection conexion = null;
        try {
            conexion = DriverManager.getConnection(database, dataUser, dataPassword);
            if(flag == true){
                JOptionPane.showMessageDialog(null, "Conexión satisfactoria a la base de datos!");
            }
        } catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return conexion;
    }
}