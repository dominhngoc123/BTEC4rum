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
                String tmp = resultSet.getString(4);
                category.setTopic((new TopicDataProcess()).getDatabyID(tmp));
                tmp = resultSet.getString(5);
                category.setUser((new UserDataProcess()).getDataByEmail(tmp));
                category.setDateAdded(ConvertDate.getDate(resultSet.getString(6)));
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
    
    public Category getDatabyID(String categoryID)
    {
        Category category = new Category();
        String sqlQuery = "SELECT * FROM tblCategory WHERE categoryID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, categoryID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                category.setCategoryID(resultSet.getString(1));
                category.setCategoryName(resultSet.getString(2));
                category.setCategoryDescription(resultSet.getString(3));
                String tmp = resultSet.getString(4);
                category.setTopic((new TopicDataProcess()).getDatabyID(tmp));
                tmp = resultSet.getString(5);
                category.setUser((new UserDataProcess()).getDataByEmail(tmp));
                category.setDateAdded(ConvertDate.getDate(resultSet.getString(6)));
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return category;
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
                String tmp = resultSet.getString(4);
                category.setTopic((new TopicDataProcess()).getDatabyID(tmp));
                tmp = resultSet.getString(5);
                category.setUser((new UserDataProcess()).getDataByEmail(tmp));
                category.setDateAdded(ConvertDate.getDate(resultSet.getString(6)));
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
    public List<Category> getDataByTopic(String topicID)
    {
        List<Category> listCategory = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblCategory WHERE topicID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, topicID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                Category category = new Category();
                category.setCategoryID(resultSet.getString(1));
                category.setCategoryName(resultSet.getString(2));
                category.setCategoryDescription(resultSet.getString(3));
                String tmp = resultSet.getString(4);
                category.setTopic((new TopicDataProcess()).getDatabyID(tmp));
                tmp = resultSet.getString(5);
                category.setUser((new UserDataProcess()).getDataByEmail(tmp));
                category.setDateAdded(ConvertDate.getDate(resultSet.getString(6)));
                listCategory.add(category);
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCategory;
    }
    public boolean addCategory(String categoryName, String categoryDescription, String topicID, String accountEmail)
    {
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        String categoryID = categoryDataProcess.generateCategoryID();
        boolean isAdded = false;
        String sqlQuery = "INSERT INTO tblCategory VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";
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
    public String generateCategoryID()
    {
        String newCategoryID = "";
        List<Integer> listTopicID = new ArrayList<>();
        String sqlQuery = "Select categoryID from tblCategory";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                String tmp = resultSet.getString(1);
                int tmpNum = Integer.parseInt(tmp.substring(Math.max(0, tmp.length() - 2)));
                listTopicID.add(tmpNum);
            }
            resultSet.close();
            statement.close();
            getConnection().close();
            int tmpIndex = 1;
            for (int i: listTopicID)
            {
                if (i >= tmpIndex)
                {
                    tmpIndex = i + 1;
                }
            }
            if (tmpIndex < 10)
            {
                newCategoryID += "C0" + tmpIndex;
            }
            else
            {
                newCategoryID += "C" + tmpIndex;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return newCategoryID;
    }
}
