package Service;

import Registration.UserBean;

import java.util.List;

public interface UserRegService {
    int save(UserBean userBean);
    boolean User_log_in(int registrationNumber , int password);
    List<UserBean>getAllUser();
    UserBean getUserByRegistration(int RegistrationNumber);

}
