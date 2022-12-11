package Service;

import Registration.Repository;
import Registration.UserBean;

import java.util.List;

public class UserRegServiceImp implements UserRegService {
    @Override
    public  int save(UserBean userBean){
       Repository repository =  new Repository();
       boolean existStatement = repository.isUserExitsWithRegistration(userBean.getRegistrationNumber());
       if (existStatement)
       {
           return -1;
       }

        return repository.saveUserInfo(userBean);
    }
    @Override
    public boolean User_log_in(int registrationNumber ,String password)
    {
        Repository repository =  new Repository();
        return   repository.findUserByCredential(registrationNumber,password);



    }

    @Override
    public List<UserBean> getAllUser() {
        Repository repository =  new Repository();
         return  repository.getAllUser();
    }

    @Override
    public UserBean getUserByRegistration(int RegistrationNumber) {
        Repository repository =  new Repository();
        return  repository.findUserByRegistration(RegistrationNumber);
    }
}
