package SqlConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class sqlConnect {
    private static final String DATABASE_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DATABASE_URI = "jdbc:mysql://localhost:3306/resultsheet";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";
    private static final String MAX_POOL = "250";
    private static Connection connection = null;
    private Properties properties;

    private Properties getProperties() {
        if (properties == null) {
            properties = new Properties();
            properties.setProperty("user", USERNAME);
            properties.setProperty("password", PASSWORD);
            properties.setProperty("Max_pooled_statement", MAX_POOL);

        }

        return properties;

    }

    public Connection connection() {
        if (connection == null) {
            try {
                Class.forName(DATABASE_DRIVER);
                connection = (Connection) DriverManager.getConnection(DATABASE_URI, getProperties());
            } catch (Exception e) {
                System.out.println(e);
            }


        }
        return connection;

    }

    public static void main(String[] args) {
        sqlConnect sqlConnect = new sqlConnect();
        System.out.println(sqlConnect.connection());
    }
}
