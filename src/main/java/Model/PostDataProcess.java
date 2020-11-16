/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Post;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngoc Do Minh
 */
public class PostDataProcess {
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
                Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    
    public boolean createPost(String postID, String postTitle, String postContent, String threadID, String accountEmail, int userRole)
    {
        boolean isAdded = false;
        String sqlQuery = "";
        if (userRole == 3)
        {
            sqlQuery += "INSERT INTO tblProduct VALUES(?, ?, ?, ?, ?, CURRENT_TIMESTAMP(), 2)";
        }
        else
        {
            sqlQuery += "INSERT INTO tblProduct VALUES(?, ?, ?, ?, ?, CURRENT_TIMESTAMP(), 1)";
        }
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, postID);
            preparedStatement.setString(2, postTitle);
            preparedStatement.setString(1, postContent);
            preparedStatement.setString(1, threadID);
            preparedStatement.setString(1, accountEmail);
            isAdded = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isAdded;
    }
    
    public List<Post> getDataByPosterEmail(String accountEmail)
    {
        List<Post> listPost = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblPost WHERE accountEmail = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, accountEmail);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                Post post = new Post();
                post.setPostID(resultSet.getString(1));
                post.setPostTitle(resultSet.getNString(2));
                post.setPostContent(resultSet.getNString(3));
                post.setThreadID(resultSet.getString(4));
                post.setAccountEmail(accountEmail);
                post.setDateAdded(resultSet.getString(6));
                post.setStatus(resultSet.getString(7));
                listPost.add(post);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPost;
    }
    public Post getPostByID(String postID)
    {
        Post post = new Post();
        String sqlQuery = "SELECT * FROM tblPost WHERE postID = ?";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, postID);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                post.setPostID(resultSet.getString(1));
                post.setPostTitle(resultSet.getNString(2));
                post.setPostContent(resultSet.getNString(3));
                post.setThreadID(resultSet.getString(4));
                post.setAccountEmail(resultSet.getString(5));
                post.setDateAdded(resultSet.getString(6));
                post.setStatus(resultSet.getString(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return post;
    }
}
