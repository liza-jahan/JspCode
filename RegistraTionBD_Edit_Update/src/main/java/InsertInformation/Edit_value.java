package InsertInformation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Edit_value {
    public user_bean getTeacherInfoByEmail(String Email){
        SqlConnect obj_connect=new SqlConnect();
        Connection connection=obj_connect.getConnection();
        PreparedStatement rs=null;
        ResultSet ps=null;
        user_bean obj_user_bean=new user_bean();
        try{
            String query="select * from teacher_information where email=?";
            rs=connection.prepareStatement(query);
            rs.setString(1,Email);
            ps= rs.executeQuery();

            while(ps.next()) {


                obj_user_bean.setTeacherName(ps.getString("TeacherName"));
                obj_user_bean.setEmail(ps.getString("email"));
                obj_user_bean.setPhoneNumber(ps.getInt("phoneNumber"));

            }
        } catch (SQLException e) {
            System.out.println(e);
        }


        return obj_user_bean;
    }
    public void edit_value( user_bean obj_user_bean){
        SqlConnect obj_connect=new SqlConnect();
        Connection connection=obj_connect.getConnection();

        PreparedStatement rs=null;
        ResultSet ps=null;

        try{
            String query="update set user email=?,phoneNumber=? where TeacherName=?;";
            rs=connection.prepareStatement(query);
            rs.setString(1,obj_user_bean.getEmail());
            rs.setString(2, String.valueOf(obj_user_bean.getPhoneNumber()));
            rs.setString(3,obj_user_bean.getTeacherName());
            rs.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }



    }
}
