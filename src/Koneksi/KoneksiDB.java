package Koneksi;


import form.login;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class KoneksiDB {
    public Connection con;
    public Statement stat;
    public ResultSet rs;
    public PreparedStatement pstmt;
    public String sql = "";

    public void koneksikoskosan() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dbkoskosan", "root", "");
            stat = con.createStatement(); // Inisialisasi objek Statement
//            JOptionPane.showMessageDialog(null, "Koneksi oke");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Koneksi error: " + e);
        }
    }
}
