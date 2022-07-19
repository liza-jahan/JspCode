package riverRegistrationInformation;

import com.river_information.Database.Sql_connect;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RiverRepository {


    public void riverRepository(String District_name , String River_name, float Height, float Width, float Depth, String Information) {
        Sql_connect sql_connect = new Sql_connect();

        Connection connection = sql_connect.connection();
        PreparedStatement statement = null;
        try {
            String query ="INSERT INTO information_river(String District_name,String River_name,float  Height,float Width, float Depth ,String Information) " +
                            "values (?,?,?,?,?,?,?)";
            statement=connection.prepareStatement(query);

            statement.setString(1, District_name);
            statement.setString(2, River_name);
            statement.setFloat(3, Float.parseFloat(String.valueOf((Height))));
            statement.setFloat(4, Float.parseFloat(String.valueOf(Width)));
            statement.setFloat(5, Float.parseFloat(String.valueOf(Depth)));
            statement.setString(6, Information);

            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();

        }

    }

}
