package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    private String usuario = "root";
    private String senha = "@Usuario10.";
//    private String host = "localhost";
//    private String porta = "3306";
//    private String db = "db_supportteste";

    public Connection getConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/db_supportteste" + "?useTimezone=true&serverTimezone=UTC", usuario, senha);
            
        } catch (Exception e) {
            throw new RuntimeException("Erro 1: " + e);
        }
    }

}
