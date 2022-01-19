/*
 * Autor: Rosado Zambrano Christiam Ariel
 * Curso: Quinto "B"
 * Periodo de desarrollo: 22/12/2021 - 28/12/2021
 */
package tramites_de_iglesia;
import java.io.IOException;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Program extends JFrame{

    public static void main(String[] args) throws IOException {
        
        //Crear el archivo si no existe
        Configuraciones config = new Configuraciones();
        config.crearArchivo();

        //Inicializar ventana
        Panel panelControl = new Panel();
        panelControl.setVisible(true);
        
    }
}
