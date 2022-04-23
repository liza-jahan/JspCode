package CRUD;

import common.DB_Connection;
import common.User_Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Read_Values {
    public static void main(String[] args) {
        Read_Values obj_Read_Values=new Read_Values();
        obj_Read_Values.get_values();
    }
    public List get_values(){
        DB_Connection obj_DB_Connection=new DB_Connection();
        Connection connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        List list=new ArrayList();
        try {
            String query="select * from user_inf;";
            ps=connection.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                User_Bean obj_User_Bean=new User_Bean();
                System.out.println(rs.getInt("sl_no"));
                System.out.println(rs.getString("email"));
                System.out.println(rs.getString("user_name"));
                System.out.println(rs.getInt("mobile"));
                obj_User_Bean.setSl_no(rs.getInt("sl_no"));
                obj_User_Bean.setEmail(rs.getString("email"));
                obj_User_Bean.setUser_name(rs.getString("user_name"));
                obj_User_Bean.setMobile(rs.getInt("mobile"));
                list.add(obj_User_Bean);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}
