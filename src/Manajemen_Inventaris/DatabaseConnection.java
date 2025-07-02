/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Manajemen_Inventaris;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author salsa nabila
 */
public class DatabaseConnection {
    private static Connection conn;

    public static Connection connect() {
        if (conn == null) {
            try {
                String url = "jdbc:mysql://localhost:3306/imanasaser_inventory";
                String user = "root";  // atau username MySQL kamu
                String pass = "";      // atau password MySQL kamu
                conn = DriverManager.getConnection(url, user, pass);
            } catch (SQLException e) {
                System.out.println("Koneksi Gagal! " + e.getMessage());
            }
        }
        return conn;
    }
}
