package InsertInformation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Read_value {
    public static void main(String[] args) {
        Read_value obj_Read_value=new Read_value();
        obj_Read_value.get_values();



    }
    public List<user_bean> get_values(){
        SqlConnect obj_connect=new SqlConnect();
        Connection connection=obj_connect.getConnection();

        PreparedStatement rs=null;
        ResultSet ps=null;
        List<user_bean> list=new ArrayList<user_bean>();
        try{
            String query="select * from teacher_information;";
            rs=connection.prepareStatement(query);
            ps= rs.executeQuery();
          while(ps.next()) {
              user_bean obj_user_bean=new user_bean();
              System.out.println();
              System.out.println();
              System.out.println();
              obj_user_bean.setTeacherName(ps.getString("TeacherName"));
              obj_user_bean.setEmail(ps.getString("email"));
              obj_user_bean.setPhoneNumber(ps.getInt("phoneNumber"));
              list.add(obj_user_bean);
          }
        } catch (SQLException e) {
            System.out.println(e);
        }


        return list;
    }
}
