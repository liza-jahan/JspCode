package MySql_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class  SqlConnect {
    public static void main(String[] args)  {
        SqlConnect obj=new SqlConnect();
        System.out.println(obj.getconnection());
    }

    public Connection getconnection()  {
        Connection connection=null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_table","root","root");
        }
        catch (Exception e){

            
        }
 return connection;



    }


}
