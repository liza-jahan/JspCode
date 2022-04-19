package management;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqlConnection {
    public static void main(String[] args) {
        SqlConnection SqlConnection=new SqlConnection();
        System.out.println (SqlConnection.getValue());
    }




    public Connection getValue(){
        Connection connection=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/Employe","root","root");


        }
        catch(Exception e) {
            System.out.println(e);

        }
       return connection;




    }
}
