package com.river_information.model;

public class UserRegistrationRequest {
    private String firstName;
    private String lastName;
    private String userName;
    private String email;
    private String passwordR;
    private String authority = "User";

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswordR() {
        return passwordR;
    }

    public void setPasswordR(String passwordR) {
        this.passwordR = passwordR;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

}