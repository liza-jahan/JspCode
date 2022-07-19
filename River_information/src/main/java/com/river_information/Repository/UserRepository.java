package com.river_information.Repository;


import com.river_information.Database.Sql_connect;
import com.river_information.model.UserRegistrationRequest;
import com.river_information.model.UserResponse;

import java.sql.*;
import java.util.ArrayList;

import java.util.List;

public class UserRepository {

    private static final String FirstName = "First_name";
    private static final String LastName = "Last_name";
    private static final String UserName = "User_name";
    private static final String Email = "Email";
    private static final String Password_r = "Password_r";
    private  String Authority = "User";

    public int saveUser(UserRegistrationRequest request) {
        Sql_connect sql_connect = new Sql_connect();

        Connection connection = sql_connect.connection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(
                    "INSERT INTO userinfo(First_name,Last_name,User_name,Email, Password_r ,Authority) " +
                            "value (?,?,?,?,?,?)");

            statement.setString(1, request.getFirstName());
            statement.setString(2, request.getLastName());
            statement.setString(3, request.getUserName());
            statement.setString(4, request.getEmail());
            statement.setString(5, request.getPasswordR());
            statement.setString(6, request.getAuthority());




            return statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();

        }

        return 0;
    }
    public boolean isUserExitsWithEmail(String Email) {
        Sql_connect sql_connect = new Sql_connect();
        Connection connection = sql_connect.connection();
        PreparedStatement statement = null;
        boolean exitStatement = false;
        try {
            statement = connection.prepareStatement(
                    "SELECT Email from userinfo  where  Email=?");
            statement.setString(1, Email);

            ResultSet resultSet = statement.executeQuery();
            exitStatement = resultSet.next();


        } catch (Exception e) {
            System.out.println(e);
        }
        return exitStatement;
    }
    public UserResponse findUserByEmail(String email) {
        Sql_connect sql_connect = new Sql_connect();
        Connection connection = sql_connect.connection();
        PreparedStatement statement = null;
        boolean exitStatement = false;

        try {
            statement = connection.prepareStatement(
                    "SELECT * from userinfo  where  Email=?");
            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()){
                UserResponse userResponse=new UserResponse();
                userResponse.setFirstName(resultSet.getString(FirstName));
                userResponse.setLastName(resultSet.getString(LastName));
                userResponse.setUserName(resultSet.getString(UserName));
                userResponse.setEmail(resultSet.getString(Email));
                userResponse.setAuthority(resultSet.getString(Authority));
                return userResponse;

            }


        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }


    public List<UserRegistrationRequest> getAllUser() {
        Sql_connect sql_connect = new Sql_connect();
        Connection connection = sql_connect.connection();
        PreparedStatement statement = null;
        boolean exitStatement = false;
        List<UserRegistrationRequest> responseList = new ArrayList<>();
        try {
            statement = connection.prepareStatement(
                    "SELECT* from userinfo ");


            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                UserRegistrationRequest response = new UserRegistrationRequest();
                response.setFirstName(resultSet.getString(FirstName));
                response.setLastName(resultSet.getString(LastName));
                response.setUserName(resultSet.getString(UserName));
                response.setEmail(resultSet.getString(Email));
                response.setPasswordR(resultSet.getString(Password_r));

                responseList.add(response);
            }


        } catch (Exception e) {
            System.out.println(e);
        }
        return responseList;
    }

    public boolean findUserByCredential(String Email, String Password_r) {

        Sql_connect sql_connect = new Sql_connect();
        Connection connection = sql_connect.connection();
        PreparedStatement statement = null;
        boolean exitStatement = false;
        try {
            statement = connection.prepareStatement(
                    "SELECT Email from userinfo where Email=? and Password_r=?");
            statement.setString(1, Email);
            statement.setString(2, (Password_r));
            ResultSet resultSet = statement.executeQuery();
            exitStatement = resultSet.next();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return exitStatement;
    }

}


