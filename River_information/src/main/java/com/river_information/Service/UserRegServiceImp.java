package com.river_information.Service;

import com.river_information.Repository.UserRepository;
import com.river_information.model.UserRegistrationRequest;
import com.river_information.model.UserResponse;

import java.util.List;



public class UserRegServiceImp implements UserRegService {


    @Override
    public int save(UserRegistrationRequest registrationRequest) {
        UserRepository registration = new UserRepository();
        boolean existStatement = registration.isUserExitsWithEmail(registrationRequest.getEmail());
        if (existStatement) {
            return -1;
        }
        return registration.saveUser(registrationRequest);
    }


    @Override
    public boolean User_log_in(String Email, String Password_r) {
        UserRepository registration = new UserRepository();

        return registration.findUserByCredential(Email, Password_r);
    }

    @Override
    public List<UserRegistrationRequest> getAllUser() {
        UserRepository registration = new UserRepository();
        return registration.getAllUser();
    }

    @Override
    public UserResponse getUserByEmail(String email) {
        UserRepository registration = new UserRepository();
        return registration.findUserByEmail(email);

    }
}
