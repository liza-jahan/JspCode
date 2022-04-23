package CRUD;

import common.DB_Connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Insert_Values {
    public void insert_values(int sl_no,String user_name,String email,int mobile)
    {
        DB_Connection obj_DB_Connection=new DB_Connection();
        Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;

        try {
            String query="insert into user_inf(sl_no,user_name,email,mobile) values(?,?,?,?)";
            ps=connection.prepareStatement(query);
            ps.setInt(1, sl_no);
            ps.setString(2, user_name);
            ps.setString(3, email);
            ps.setInt(4, mobile);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }
}
