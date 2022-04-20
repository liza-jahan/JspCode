package InsertInformation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class InsertInformation {
    //public Object insert_information;

    public static void insert_information(String TeacherName, String email, int phoneNumber) {
        sqlConnect obj = new sqlConnect();
        InsertInformation insertInformation_connection = new InsertInformation();
        Connection connection = obj.getConnection();
        PreparedStatement s1 = null;
        try {
            String query = " insert into teacher_information( TeacherName, email, phoneNumber)values(?,?,?)";
            s1 = connection.prepareStatement(query);
            s1.setString(1, TeacherName);
            s1.setString(2, email);
            s1.setInt(3, phoneNumber);
            s1.executeUpdate();
            s1.close();
            connection.close();


        } catch (Exception e) {
          //  e.printStackTrace();
        }

    }

  // public Connection getConnection() {
    //   Connection connection = null;
        //return connection;
  //  }
}   


