package MySql_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Insert_Value {
    public void insert_values(String user_name, String email, int password_number)  {
        SqlConnect ob_Db_connection=new SqlConnect();
        Connection connection=ob_Db_connection.getconnection();
        PreparedStatement ps=null;
        try {
            String query = " insert into student( String user_name, String email, int password_number) values (?,?,?)";
            ps = connection.prepareStatement(query);
            ps.setString(1,user_name);
            ps.setString(2,email);
            ps.setInt(3,password_number);
            ps.executeUpdate();
            ps.close();
            connection.close();
        } catch (SQLException e) {
            System.err.println(e);

        }

    }
}
