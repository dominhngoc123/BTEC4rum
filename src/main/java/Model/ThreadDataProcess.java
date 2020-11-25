/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Entity.Thread;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ngoc Do Minh
 */
public class ThreadDataProcess {
    public Connection getConnection()
    {
        Connection connection = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=BTEC4rumDB";
            String user = "sa";
            String password = "anhyeuem";
            try {
                connection = DriverManager.getConnection(url, user, password);
            } catch (SQLException ex) {
                Logger.getLogger(CategoryDataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CategoryDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    public List<Thread> getData()
    {
        List<Thread> listThread = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblThread";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Thread thread = new Thread();
                thread.setThreadID(resultSet.getString(1));
                thread.setThreadName(resultSet.getString(2));
                thread.setThreadDescription(resultSet.getString(3));
                thread.setCategoryID(resultSet.getString(4));
                thread.setDateAdded(resultSet.getString(5));
                listThread.add(thread);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listThread;
    }
}
