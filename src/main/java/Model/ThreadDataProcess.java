/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Category;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Entity.Thread;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ngoc Do Minh
 */
public class ThreadDataProcess {

    public Connection getConnection() {
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

    public List<Thread> getData() {
        List<Thread> listThread = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblThread";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next()) {
                Thread thread = new Thread();
                thread.setThreadID(resultSet.getString(1));
                thread.setThreadName(resultSet.getString(2));
                thread.setThreadDescription(resultSet.getString(3));
                String tmp = resultSet.getString(4);
                thread.setCategory((new CategoryDataProcess()).getDatabyID(tmp));
                thread.setDateAdded(ConvertDate.getDate(resultSet.getString(5)));
                listThread.add(thread);
            }
            resultSet.close();
            statement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listThread;
    }

    public Thread getDataByID(String threadID) {
        Thread thread = new Thread();
        String sqlQuery = "SELECT * FROM tblThread WHERE threadID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, threadID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                thread.setThreadID(resultSet.getString(1));
                thread.setThreadName(resultSet.getString(2));
                thread.setThreadDescription(resultSet.getString(3));
                String tmp = resultSet.getString(4);
                thread.setCategory((new CategoryDataProcess()).getDatabyID(tmp));
                thread.setDateAdded(ConvertDate.getDate(resultSet.getString(5)));
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return thread;
    }

    public List<Thread> getThreadByCategory(String categoryID) {
        List<Thread> listThread = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblThread WHERE categoryID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, categoryID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                Thread thread = new Thread();
                thread.setThreadID(resultSet.getString(1));
                thread.setThreadName(resultSet.getString(2));
                thread.setThreadDescription(resultSet.getString(3));
                String tmp = resultSet.getString(4);
                thread.setCategory((new CategoryDataProcess()).getDatabyID(tmp));
                thread.setDateAdded(ConvertDate.getDate(resultSet.getString(5)));
                listThread.add(thread);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listThread;
    }

    public boolean updateThread(String threadID, String threadName, String threadDescription, String categoryID) {
        boolean isUpdate = false;
        String sql = "UPDATE tblThread SET threadName = ?, threadDescription = ?, categoryID = ? WHERE threadID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, threadName);
            preparedStatement.setString(2, threadDescription);
            preparedStatement.setString(3, categoryID);
            preparedStatement.setString(4, threadID);
            isUpdate = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isUpdate;
    }

    public boolean addThread(String threadName, String threadDescription, String categoryID) {
        boolean isAdded = false;
        String threadID = generateThreadID();
        String sqlQuery = "INSERT INTO tblThread VALUES(?, ?, ?, ?, CURRENT_TIMESTAMP)";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, threadID);
            preparedStatement.setString(2, threadName);
            preparedStatement.setString(3, threadDescription);
            preparedStatement.setString(4, categoryID);
            isAdded = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isAdded;
    }

    public boolean deleteThread(String threadID) {
        boolean isDelete = false;
        String sqlQuery = "DELETE tblThread WHERE threadID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, threadID);
            isDelete = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isDelete;
    }

    public String generateThreadID() {
        String newThreadID = "";
        List<Integer> listThreadIndex = new ArrayList<>();
        String sqlQuery = "SELECT threadID FROM tblThread";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next()) {
                String tmp = resultSet.getString(1);
                int tmpNum = Integer.parseInt(tmp.substring(Math.max(0, tmp.length() - 2)));
                listThreadIndex.add(tmpNum);
            }
            resultSet.close();
            statement.close();
            getConnection().close();
            int tmpIndex = 1;
            for (int i : listThreadIndex) {
                if (i >= tmpIndex) {
                    tmpIndex = i + 1;
                }
            }
            if (tmpIndex < 10) {
                newThreadID += "THR0" + tmpIndex;
            } else {
                newThreadID += "THR" + tmpIndex;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThreadDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return newThreadID;
    }
}
