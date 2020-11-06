/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngoc Do Minh
 */
public class LoginDataProcess {
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
                Logger.getLogger(LoginDataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    public boolean checkLogin(String userEmail)
    {
        boolean isLogin = false;
        String sqlQuery = "SELECT * FROM tblUser WHERE accountEmail = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, userEmail);
            ResultSet resultSet = preparedStatement.executeQuery();
            isLogin = resultSet.next();
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isLogin;
    }
    public boolean checkAdminAccount(String userName, String password)
    {
        boolean isLogin = false;
        String sqlQuery = "SELECT * FROM tblUser WHERE _username = ? AND _password = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            isLogin = resultSet.next();
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isLogin;
    }
    public boolean addUser(String userEmail, String userFullName, String userAddress, String userAvatar)
    {
        int isAdded = 0;
        String sqlQuery = "INSERT INTO tblUser VALUES (?, null, null, ?, ?, 3, 1, null, ?, null, null, CURRENT_TIMESTAMP)";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, userEmail);
            preparedStatement.setString(2, userFullName);
            preparedStatement.setString(3, userAddress);
            preparedStatement.setString(4, userAvatar);
            isAdded = preparedStatement.executeUpdate();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (isAdded > 0);
    }
}
