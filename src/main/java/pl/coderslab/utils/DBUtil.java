package pl.coderslab.utils;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DBUtil {

    private static DataSource dataSource;

    public static Connection getConnection() throws SQLException {
        return getInstance().getConnection();
    }

    private static DataSource getInstance() {
        if (dataSource == null) { //jeśli null, to zostanie zainicjalizowane
            try {

                //singleton
                Context initContext = new InitialContext();

                Context envContext = (Context) initContext.lookup("java:/comp/env");
                dataSource = (DataSource) envContext.lookup("jdbc/school"); //zasób taki jak w pliku context.xml
            } catch (NamingException e) {
                e.printStackTrace();
            }
        }
        return dataSource; //jeśli nie to zwróci
    }
}

