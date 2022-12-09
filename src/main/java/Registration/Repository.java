package Registration;

import SqlConnect.sqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Repository {
    private  static  final String REGISTRATION_NUMBER="registrationNumber";
    private  static  final String CLASS="classs";
    private  static  final String PASSWORD="password";
    private  static  final String AUTHORITY="authority";
    private     String ID="id";


    public int saveUserInfo(UserBean userBean){
        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        try{
            statement= connection.prepareStatement("insert into registration_info(registrationNumber,classs,password,authority)"+"values (?,?,?,?)");
            statement.setInt(1,userBean.getRegistrationNumber());
            statement.setInt(2,userBean.getClasss());
            statement.setInt(3,userBean.getPassword());
            statement.setString(4,userBean.getAuthority());

            return statement.executeUpdate();



        }catch (Exception e)
        {
            System.out.println(e);
        }



      return 0;

    }
    public List<UserBean> getAllUser(){

          sqlConnect sqlConnect=new sqlConnect();
          Connection connection=sqlConnect.connection();
          PreparedStatement statement=null;
          List <UserBean> bean =new ArrayList<>();
          try{
              statement= connection.prepareStatement("select * from registration_info");
              ResultSet rs= statement.executeQuery();

              while (rs.next()){
                  UserBean userBean=new UserBean();
                 userBean.setRegistrationNumber(rs.getInt(REGISTRATION_NUMBER));
                 userBean.setClasss(rs.getInt(CLASS));
                 userBean.setPassword(rs.getInt(PASSWORD));
                 userBean.setAuthority(rs.getString(AUTHORITY));
                 userBean.setId(rs.getInt(ID));
              bean.add(userBean);

              }


          }catch (Exception e)
          {
              System.out.println(e);
          }



       return bean;
    }

}
