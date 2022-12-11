package Registration;

import SqlConnect.sqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Repository {
    private static final String REGISTRATION_NUMBER = "registrationNumber";
    private static final String CLASS = "classs";
    private static final String PASSWORD = "password";
    private static final String AUTHORITY = "authority";
    private String ID = "id";


    public int saveUserInfo(UserBean userBean) {
        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("insert into registration_info(registrationNumber,classs,password,authority)" + "values (?,?,?,?)");
            statement.setInt(1, userBean.getRegistrationNumber());
            statement.setInt(2, userBean.getClasss());
            statement.setString(3, userBean.getPassword());
            statement.setString(4, userBean.getAuthority());

            return statement.executeUpdate();


        } catch (Exception e) {
            System.out.println(e);
        }


        return 0;

    }

    public boolean isUserExitsWithRegistration(int RegistrationNumber) {

        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        boolean exits = false;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("select registrationNumber from  registration_info   where registrationNumber=?");
            statement.setInt(1, RegistrationNumber);

            ResultSet resultSet = statement.executeQuery();
            exits = resultSet.next();


        } catch (Exception e) {
            System.out.println(e);
        }
        return exits;
    }

    public UserBean findUserByRegistration(int RegistrationNumber) {
        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        boolean exits = false;
        PreparedStatement statement = null;
        UserBean userBean = new UserBean();
        try {
            statement = connection.prepareStatement("select * from registration_info where registrationNumber=? ");
            statement.executeUpdate();
            ResultSet resultSet = null;

            while (resultSet.next()) {

                userBean.setRegistrationNumber(resultSet.getInt(REGISTRATION_NUMBER));
                userBean.setClasss(resultSet.getInt(CLASS));
                userBean.setPassword(resultSet.getString(PASSWORD));
                userBean.setAuthority(resultSet.getString(AUTHORITY));
                userBean.setId(resultSet.getInt(ID));

            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return userBean;
    }


    public List<UserBean> getAllUser() {

        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        List<UserBean> bean = new ArrayList<>();
        try {
            statement = connection.prepareStatement("select * from registration_info");
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                UserBean userBean = new UserBean();
                userBean.setRegistrationNumber(rs.getInt(REGISTRATION_NUMBER));
                userBean.setClasss(rs.getInt(CLASS));
                userBean.setPassword(rs.getString(PASSWORD));
                userBean.setAuthority(rs.getString(AUTHORITY));
                userBean.setId(rs.getInt(ID));
                bean.add(userBean);

            }


        } catch (Exception e) {
            System.out.println(e);
        }


        return bean;
    }
    public boolean findUserByCredential (int RegistrationNumber , String password) {

        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        boolean exits = false;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("select registrationNumber from  registration_info   where registrationNumber=? and password=?");
            statement.setInt(1, RegistrationNumber);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();
            exits = resultSet.next();


        } catch (Exception e) {
            System.out.println(e);
        }
        return exits;
    }

}
