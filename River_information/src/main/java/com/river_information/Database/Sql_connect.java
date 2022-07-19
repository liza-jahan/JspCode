package com.river_information.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class Sql_connect {

    private static final String DATABASE_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DATABASE_URI = "jdbc:mysql://localhost:3306/river_information";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";
    private static final String MAX_POOL = "250";
    private static Connection connection = null;

    private Properties properties;

    private Properties getProperties() {
        if (properties == null) {
            properties = new Properties();
            properties.setProperty("user", USERNAME);
            properties.setProperty("password", PASSWORD);
            properties.setProperty("Max_pooled_statement", MAX_POOL);
        }

        return properties;
    }

    public Connection connection() {
        if (connection == null) {
            try {
                Class.forName(DATABASE_DRIVER);
                connection = (Connection) DriverManager.getConnection(DATABASE_URI, getProperties());


            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return connection;

    }

    public static void main(String[] args) {
        Sql_connect Sql_connect = new Sql_connect();
        System.out.println(Sql_connect.connection());
    }

}
