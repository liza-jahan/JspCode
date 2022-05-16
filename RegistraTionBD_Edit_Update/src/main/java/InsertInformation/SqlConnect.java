package InsertInformation;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqlConnect {

    public static void main(String[] args) {
        SqlConnect obj= new SqlConnect();
        System.out.println(obj.getConnection());

    }
    public static Connection getConnection() {
        Connection connection = null;


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/teacher", "root", "root");


        } catch (Exception e) {

        }

        return connection;
    }


}
