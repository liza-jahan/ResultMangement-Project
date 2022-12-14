package com.example.resultmanagement.UserService;

import com.example.resultmanagement.UserModel.UserBean;

import java.util.List;

public interface UserRegService {
    int save(UserBean userBean);
    boolean User_log_in(int registrationNumber , String password);
    List<UserBean>getAllUser();
    UserBean getUserByRegistration(int RegistrationNumber);

}
