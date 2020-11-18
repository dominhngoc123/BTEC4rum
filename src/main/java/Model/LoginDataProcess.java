/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.User;
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
    public User checkLogin(String userEmail)
    {
        User user = new User();
        String sqlQuery = "SELECT * FROM tblAccount WHERE accountEmail = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, userEmail);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next())
            {
                user.setAccountEmail(resultSet.getString(1));
                user.setUsername(resultSet.getString(2));
                user.setPassword(resultSet.getString(3));
                user.setUserFullName(resultSet.getNString(4));
                user.setUserAddress(resultSet.getNString(5));
                user.setRole(resultSet.getString(6));
                user.setStatus(resultSet.getString(7));
                user.setUserDoB(resultSet.getString(8));
                user.setUserAvatar(resultSet.getString(9));
                user.setUserGender(resultSet.getString(10));
                user.setUserDescription(resultSet.getString(11));
                user.setUserPhonenumber(resultSet.getString(12));
                user.setDateAdded(resultSet.getString(13));                
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
    public boolean checkAdminAccount(String userName, String password)
    {
        boolean isLogin = false;
        int userRole = 0;
        String sqlQuery = "SELECT * FROM tblAccount WHERE _username = ? AND _password = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                userRole = resultSet.getInt(6);
            }
            if (userRole == 1)
            {
                isLogin = true;
            }
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
        String sqlQuery = "INSERT INTO tblAccount VALUES (?, null, null, ?, ?, 3, 1, null, ?, null, null, null, CURRENT_TIMESTAMP)";
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
