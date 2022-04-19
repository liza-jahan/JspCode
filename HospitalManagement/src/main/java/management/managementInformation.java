package management;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.util.Date;


public class managementInformation {
    public  void managementInformation(String employe_name, Time start_work, Date date_present_day, Time end_work){
        SqlConnection SqlConnection=new SqlConnection();
        Connection connection= SqlConnection.getValue();
           PreparedStatement ps=null;
        try {
            String query="insert into employeList ( String employe_name,Time start_work,Date date_present_day,Time end_work) values(?,?,?,?)";
            ps=connection.prepareStatement(query);
            ps.setString(1,employe_name);
            ps.setTime(2, start_work);
            ps.setDate(3, (java.sql.Date) date_present_day);
            ps.setTime(4,end_work);


            ps.close();
            connection.close();
        }
        catch (Exception e){
            System.out.println(e);
        }

    }
}
