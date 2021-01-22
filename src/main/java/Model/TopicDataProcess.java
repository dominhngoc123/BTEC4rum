/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Topic;
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
public class TopicDataProcess {
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
                Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    public List<Topic> getData()
    {
        List<Topic> listTopic = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblTopic";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Topic topic = new Topic();
                topic.setTopicID(resultSet.getString(1));
                topic.setTopicName(resultSet.getString(2));
                topic.setTopicDescription(resultSet.getString(3));
                topic.setDateAdded(ConvertDate.getDate(resultSet.getString(4)));
                listTopic.add(topic);
            }
            resultSet.close();
            statement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listTopic;
    }
    public Topic getDatabyID(String topicID)
    {
        Topic topic = new Topic();
        String sqlQuery = "SELECT * FROM tblTopic WHERE topicID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, topicID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                topic.setTopicID(resultSet.getString(1));
                topic.setTopicName(resultSet.getString(2));
                topic.setTopicDescription(resultSet.getString(3));
                topic.setDateAdded(ConvertDate.getDate(resultSet.getString(4)));
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return topic;
    }
    public Topic getDatabyID(Connection connection, String topicID)
    {
        Topic topic = new Topic();
        String sqlQuery = "SELECT * FROM tblTopic WHERE topicID = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, topicID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                topic.setTopicID(resultSet.getString(1));
                topic.setTopicName(resultSet.getString(2));
                topic.setTopicDescription(resultSet.getString(3));
                topic.setDateAdded(ConvertDate.getDate(resultSet.getString(4)));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return topic;
    }
    public List<Topic> getDatabyName(String topicName)
    {
        List<Topic> listTopic = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblTopic WHERE topicName = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            ResultSet resultSet = preparedStatement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Topic topic = new Topic();
                topic.setTopicID(resultSet.getString(1));
                topic.setTopicName(resultSet.getString(2));
                topic.setTopicDescription(resultSet.getString(3));
                topic.setDateAdded(resultSet.getString(4));
                listTopic.add(topic);
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listTopic;
    }
    public boolean addTopic(String topicName, String topicDescription)
    {
        boolean isAdded = false;
        String topicID = generateTopicID();
        String sqlQuery = "INSERT INTO tblTopic VALUES (?, ?, ?, CURRENT_TIMESTAMP)";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, topicID);
            preparedStatement.setString(2, topicName);
            preparedStatement.setString(3, topicDescription);
            isAdded = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isAdded;
    }
    public boolean updateTopic(String topicID, String topicName, String topicDescription)
    {
        boolean isUpdate = false;
        String sqlQuery = "UPDATE tblTopic SET topicName = ?, topicDescription = ? WHERE topicID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, topicName);
            preparedStatement.setString(2, topicDescription);
            preparedStatement.setString(3, topicID);
            isUpdate = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isUpdate;
    }
    public boolean deleteTopic(String topicID)
    {
        boolean isDelete = false;
        String sqlQuery = "DELETE tblTopic WHERE topicID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, topicID);
            isDelete = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isDelete;
    }
    
    public String generateTopicID()
    {
        String newTopicID = "";
        List<Integer> listTopicID = new ArrayList<>();
        String sqlQuery = "Select topicID from tblTopic";
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
                newTopicID += "T0" + tmpIndex;
            }
            else
            {
                newTopicID += "T" + tmpIndex;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TopicDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return newTopicID;
    }
}
