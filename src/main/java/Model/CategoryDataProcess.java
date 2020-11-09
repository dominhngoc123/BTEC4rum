/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Category;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngoc Do Minh
 */
public class CategoryDataProcess {
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
    public List<Category> getData()
    {
        List<Category> listCategory = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblCategory";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Category category = new Category();
                category.setCategoryID(resultSet.getString(1));
                category.setCategoryName(resultSet.getString(2));
                category.setCategoryDescription(resultSet.getString(3));
                category.setTopicID(resultSet.getString(4));
                category.setAccountEmail(resultSet.getString(5));
                category.setDateAdded(resultSet.getString(6));
                listCategory.add(category);
            }
            resultSet.close();
            statement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCategory;
    }
    public List<Category> getDatabyID(String categoryID)
    {
        List<Category> listCategory = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblCategory WHERE categoryID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            ResultSet resultSet = preparedStatement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Category category = new Category();
                category.setCategoryID(resultSet.getString(1));
                category.setCategoryName(resultSet.getString(2));
                category.setCategoryDescription(resultSet.getString(3));
                category.setTopicID(resultSet.getString(4));
                category.setAccountEmail(resultSet.getString(5));
                category.setDateAdded(resultSet.getString(6));
                listCategory.add(category);
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCategory;
    }
    public List<Category> getDatabyName(String categoryName)
    {
        List<Category> listCategory = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblCategory WHERE categoryName = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, categoryName);
            ResultSet resultSet = preparedStatement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Category category = new Category();
                category.setCategoryID(resultSet.getString(1));
                category.setCategoryName(resultSet.getString(2));
                category.setCategoryDescription(resultSet.getString(3));
                category.setTopicID(resultSet.getString(4));
                category.setAccountEmail(resultSet.getString(5));
                category.setDateAdded(resultSet.getString(6));
                listCategory.add(category);
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCategory;
    }
    public boolean addCategory(String categoryID, String categoryName, String categoryDescription, String topicID, String accountEmail)
    {
        boolean isAdded = false;
        String sqlQuery = "INSERT INTO tblCategory VALUES (?, ?, ?, ?, ? CURRENT_TIMESTAMP)";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, categoryID);
            preparedStatement.setString(2, categoryName);
            preparedStatement.setString(3, categoryDescription);
            preparedStatement.setString(4, topicID);
            preparedStatement.setString(5, accountEmail);
            isAdded = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isAdded;
    }
    public boolean updateCategory(String categoryID, String categoryName, String categoryDescription, String topicID, String accountEmail)
    {
        boolean isUpdate = false;
        String sqlQuery = "UPDATE tblCategory SET categoryName = ?, categoryDescription = ?, topicID = ?, accountEmail = ? WHERE categoryID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, categoryName);
            preparedStatement.setString(2, categoryDescription);
            preparedStatement.setString(3, topicID);
            preparedStatement.setString(4, accountEmail);
            preparedStatement.setString(5, categoryID);
            isUpdate = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isUpdate;
    }
    public boolean deleteCategory(String categoryID)
    {
        boolean isDelete = false;
        String sqlQuery = "DELETE tblCategory WHERE categoryID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, categoryID);
            isDelete = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isDelete;
    }
}
