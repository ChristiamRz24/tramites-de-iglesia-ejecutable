package tramites_de_iglesia;

import com.google.gson.Gson;
import java.awt.Toolkit;
import java.io.*;
import java.net.URL;
import javax.swing.*;
import java.util.Properties;

public class Configuraciones {

    //Mostrar mensajes de error
    public static void setWarningMsg(String text){
        Toolkit.getDefaultToolkit().beep();
        JOptionPane optionPane = new JOptionPane(text,JOptionPane.WARNING_MESSAGE);
        JDialog dialog = optionPane.createDialog("ERROR!");
        dialog.setAlwaysOnTop(true);
        dialog.setVisible(true);
    }
    public void crearArchivo(){
        String ruta = "src/documentos/data.json";
        File file = new File(ruta);
        try {
            if (!file.exists()) { // Si el archivo no existe es creado
                String contenido = "{"
                                 + "\n\t\"usuario\" : \"openpg\","
                                 + "\n\t\"contraseña\" : \"openpgpwd\""
                                 + "\n}";
                file.createNewFile();
                FileWriter fw = new FileWriter(file);
                BufferedWriter bw = new BufferedWriter(fw);
                bw.write(contenido);
                bw.close();
                JOptionPane.showMessageDialog(null, "Archivo creado!", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error! escritura", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public String[] leerArchivo(){
        Gson gson = new Gson();
        String fichero = "";
        
        try (BufferedReader br = new BufferedReader(new FileReader("src/documentos/data.json"))) {
            String linea;
            while ((linea = br.readLine()) != null) {
                fichero += linea;
            }
        } catch (FileNotFoundException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error! lectura", JOptionPane.ERROR_MESSAGE);
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error! lectura", JOptionPane.ERROR_MESSAGE);
        }
        
        //Obtener las propiedades del JSON
        Properties properties = gson.fromJson(fichero, Properties.class);
        
        String datos[] = new String[2];
        
        datos[0] = (String) properties.get("usuario");
        datos[1] = (String) properties.get("contrasena");
        
        return datos;
    }
}
