package com.example.resultmanagement.ResultModel;

import com.example.resultmanagement.SqlConnect.sqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RepositoryOfResult {
    private static final String ROLL = "roll";
    private static final String NAME = "name";
    private static final String BANGLA = "bangla";
    private static final String ENGLISH = "english";
    private static final String MATH = "math";
    private static final String SCIENCE = "science";

    private static final String COMPUTER = "computer";
    private String ID = "id";

    public int saveDatabase(int roll, String name, int bangla, int english, int math, int science, int computer) {

        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("INSERT INTO information(roll,name,bangla,english,math,science,computer)" + " values (?,?,?,?,?,?,?)");
            statement.setInt(1, roll);
            statement.setString(2, name);
            statement.setInt(3, bangla);
            statement.setInt(4, english);
            statement.setInt(5, math);
            statement.setInt(6, science);
            statement.setInt(7, computer);
            return statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }


        return 0;
    }

    public List<ResultBean> getAllInfo() {
        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        List<ResultBean> resultBeanList = new ArrayList<>();
        try {
            statement = connection.prepareStatement("select* from information");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                ResultBean resultBean = new ResultBean();
                resultBean.setRoll(resultSet.getInt(ROLL));
                resultBean.setName(resultSet.getString(NAME));
                resultBean.setBangla(resultSet.getInt(BANGLA));
                resultBean.setEnglish(resultSet.getInt(ENGLISH));
                resultBean.setMath(resultSet.getInt(MATH));
                resultBean.setScience(resultSet.getInt(SCIENCE));
                resultBean.setComputer(resultSet.getInt(COMPUTER));
                resultBean.setId(resultSet.getInt(ID));

                resultBeanList.add(resultBean);

            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return resultBeanList;
    }

//Edit value
    public ResultBean getValueOfResult(int Id) {
        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        ResultBean resultBean = new ResultBean();
        try {
            statement = connection.prepareStatement("select * from information where id=?");
            statement.setInt(1, Id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                resultBean.setRoll(resultSet.getInt(ROLL));
                resultBean.setName(resultSet.getString(NAME));
                resultBean.setBangla(resultSet.getInt(BANGLA));
                resultBean.setEnglish(resultSet.getInt(ENGLISH));
                resultBean.setMath(resultSet.getInt(MATH));
                resultBean.setScience(resultSet.getInt(SCIENCE));
                resultBean.setComputer(resultSet.getInt(COMPUTER));
            //   resultBean.setId(resultSet.getInt(ID));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return resultBean;
    }

    public void editValue(ResultBean resultBean) {
        sqlConnect sqlConnect = new sqlConnect();
        Connection connection = sqlConnect.connection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("UPDATE information SET roll=?,name =?,bangla=?,english=?,math=?,science=?,computer=? where id=?");
            statement.setInt(1, resultBean.getRoll());
            statement.setString(2, resultBean.getName());
            statement.setInt(3, resultBean.getBangla());
            statement.setInt(4, resultBean.getEnglish());
            statement.setInt(5, resultBean.getMath());
            statement.setInt(6, resultBean.getScience());
            statement.setInt(7, resultBean.getComputer());
           statement.setInt(8,resultBean.getId());
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
