/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Report;

import ConnectDatabase.DBConnect;
import java.io.InputStream;
import java.sql.Connection;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Anonymous
 */
public class Report extends javax.swing.JPanel {

    /**
     * Creates new form Report
     */
    public Report() {
        try {
            initComponents();
            String reportname ="baocao.jasper";
            HashMap map = new  HashMap<>();
            InputStream is = this.getClass().getClassLoader().getResourceAsStream(reportname);
            JasperPrint jasperPrint = JasperFillManager.fillReport(is, map, Con());
            JasperViewer jv = new JasperViewer(jasperPrint, false);
            jv.setVisible(true);
        } catch (JRException ex) {
            Logger.getLogger(Report.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
public static Connection Con() { 
        
        String url = "jdbc:sqlserver://localhost:1442;databaseName=Student"; 
        String username = "sa"; 
        String password = "123456"; 
        Connection conn = null; 
        try{ 
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
            conn = java.sql.DriverManager.getConnection(url,username,password); 
        }catch(Exception e){ 
            JOptionPane.showMessageDialog(null, "Can not connect to database !","Database Eror",JOptionPane.ERROR_MESSAGE); 
        } 
        return conn; 
    } 

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents
    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
