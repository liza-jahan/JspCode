package com.river_information.Service;

import com.river_information.model.UserRegistrationRequest;
import com.river_information.model.UserResponse;

import java.util.List;

public interface UserRegService {
    int save(UserRegistrationRequest registrationRequest);

    boolean User_log_in(String Email, String Password_r);

    List<UserRegistrationRequest> getAllUser();
    UserResponse getUserByEmail(String email);
}
