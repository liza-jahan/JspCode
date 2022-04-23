package CRUD;

import common.DB_Connection;
import common.User_Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Edit_values {
    public User_Bean get_value_of_user(String sl_no){
        DB_Connection obj_DB_Connection=new DB_Connection();
        Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        User_Bean obj_User_Bean=new User_Bean();
        try {
            String query="select * from user where sl_no=?";
            ps=connection.prepareStatement(query);
            ps.setString(1, sl_no);;
            rs=ps.executeQuery();
            while(rs.next()){
                obj_User_Bean.setSl_no(rs.getInt("sl_no"));
                obj_User_Bean.setEmail(rs.getString("email"));
                obj_User_Bean.setUser_name(rs.getString("user_name"));
                obj_User_Bean.setMobile(rs.getInt("mobile"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return obj_User_Bean;
    }
    public void edit_user(User_Bean obj_User_Bean){
        DB_Connection obj_DB_Connection=new DB_Connection();
        Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        try {
            String query="update user set user_name=?,email=?,mobile=? where sl_no=?";
            ps=connection.prepareStatement(query);
            ps.setString(1, obj_User_Bean.getUser_name());
            ps.setString(2, obj_User_Bean.getEmail());
            ps.setInt(3, obj_User_Bean.getMobile());
            ps.setInt(4, obj_User_Bean.getSl_no());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
