/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package skss;

import com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author lenovo
 */
public class koneksi {
    private static Connection connection;
    
    public static Connection getConnection(){
        //pengecekan koneksi database
        if (connection==null){
            try{
              String username = "root";
              String password = "";
              String url = "jdbc:mysql://localhost:3306/db_sks";
              
              MysqlDataSource source = new MysqlDataSource();
              source.setUser(username);
              source.setPassword(password);
              source.setURL(url);
              
              connection = source.getConnection();
            } catch (SQLException e){
              System.out.println("Error koneksi database");  
            }
        }       
        
        return connection;
    }
}
