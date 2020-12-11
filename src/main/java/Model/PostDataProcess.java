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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
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
    
    public List<Post> getPost()
    {
        List<Post> listPost = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblPost WHERE LEN(postID) = 10 ORDER BY dateAdded DESC";
        try {
            Statement statement = getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next())
            {
                Post post = new Post();
                post.setPostID(resultSet.getString(1));
                post.setPostTitle(resultSet.getNString(2));
                post.setPostContent(resultSet.getNString(3));
                String tmp = resultSet.getString(4);
                post.setThread((new ThreadDataProcess()).getDataByID(tmp));
                tmp = resultSet.getString(5);
                post.setUser((new UserDataProcess()).getDataByEmail(tmp));
                post.setDateAdded(resultSet.getString(6));
                post.setStatus(resultSet.getString(7));
                post.setApprovedDate(resultSet.getString(8));
                listPost.add(post);
            }
            resultSet.close();
            statement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPost;
    }
    public boolean createPost(String postTitle, String postContent, String threadID, String accountEmail, int userRole)
    {
        String postID = generatePostID(threadID);
        boolean isAdded = false;
        String sqlQuery = "";
        if (userRole == 3)
        {
            sqlQuery += "INSERT INTO tblPost VALUES(?, ?, ?, ?, ?, CURRENT_TIMESTAMP, 2, NULL)";
        }
        else
        {
            sqlQuery += "INSERT INTO tblPost VALUES(?, ?, ?, ?, ?, CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP)";
        }
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, postID);
            preparedStatement.setString(2, postTitle);
            preparedStatement.setString(3, postContent);
            preparedStatement.setString(4, threadID);
            preparedStatement.setString(5, accountEmail);
            isAdded = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isAdded;
    }
    public boolean createComment(String postID, String postTitle, String postContent, String threadID, String accountEmail, int userRole)
    {
        String commentID = generatCommentID(postID);
        boolean isAdded = false;
        String sqlQuery = "";
        if (userRole == 3)
        {
            sqlQuery = "INSERT INTO tblPost VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP, 2, )";
        }
        else
        {
            sqlQuery = "INSERT INTO tblPost VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP, 2, CURRENT_TIMESTAMP)";
        }
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, commentID);
            preparedStatement.setString(2, postTitle);
            preparedStatement.setString(3, postContent);
            preparedStatement.setString(4, threadID);
            preparedStatement.setString(5, accountEmail);
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
                String tmp = resultSet.getString(4);
                post.setThread((new ThreadDataProcess()).getDataByID(tmp));
                tmp = resultSet.getString(5);
                post.setUser((new UserDataProcess()).getDataByEmail(tmp));
                post.setDateAdded(resultSet.getString(6));
                post.setStatus(resultSet.getString(7));
                post.setApprovedDate(resultSet.getString(8));
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPost;
    }
    public List<Post> getPostByID(String postID)
    {
        List<Post> listPost = new ArrayList<>();
        String sqlQuery = "SELECT * FROM tblPost WHERE postID LIKE ? ORDER BY SUBSTRING(postID, 0, 12) ASC";
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sqlQuery);
            preparedStatement.setString(1, "%" + postID + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                Post post = new Post();
                post.setPostID(resultSet.getString(1));
                post.setPostTitle(resultSet.getNString(2));
                post.setPostContent(resultSet.getNString(3));
                String tmp = resultSet.getString(4);
                post.setThread((new ThreadDataProcess()).getDataByID(tmp));
                tmp = resultSet.getString(5);
                post.setUser((new UserDataProcess()).getDataByEmail(tmp));
                post.setDateAdded(resultSet.getString(6));
                post.setStatus(resultSet.getString(7));
                post.setApprovedDate(resultSet.getString(8));
                listPost.add(post);
            }
            resultSet.close();
            preparedStatement.close();
            getConnection().close();
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPost;
    }
    
    public String generatePostID(String threadID)
    {
        String newPostID = threadID;
        if (threadID != null)
        {
            String sql = "SELECT postID FROM tblPost WHERE postID LIKE '%" + threadID + "%' AND LEN(postID) = 10";
            try {
                PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
                List<Integer> listPostIndex = new ArrayList<>();
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next())
                {
                    String tmp = resultSet.getString(1);
                    int tmpNum = Integer.parseInt(tmp.substring(Math.max(0, tmp.length() - 4)));
                    listPostIndex.add(tmpNum);
                }
                int index = 1;
                for (int i: listPostIndex)
                {
                    if (i >= index)
                    {
                        index = i + 1;
                    }
                }
                if (index < 10)
                {
                    newPostID += "P000";
                    newPostID += index;
                }
                else if (index < 100)
                {
                    newPostID += "P00";
                    newPostID += index;
                }
                else if (index < 1000)
                {
                    newPostID += "P0";
                    newPostID += index;
                }
                else if (index < 10000)
                {
                    newPostID += "P";
                    newPostID += index;
                }
                resultSet.close();
                preparedStatement.close();
                getConnection().close();
            } catch (SQLException ex) {
                Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return newPostID;
    }
    public String generatCommentID(String baseID)
    {
        List<Integer> listOrder = new ArrayList<>();
        String sql = "SELECT postID FROM tblPost WHERE postID LIKE ? AND LEN(postID) = ?";
        try {
            int baseIDLength = baseID.length();
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, "%" + baseID + "%");
            preparedStatement.setInt(2, baseIDLength + 2);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next())
            {
                String tmp = resultSet.getString(1);
                int tmpNum = Integer.parseInt(tmp.substring(baseIDLength + 1, baseIDLength + 2));
                listOrder.add(tmpNum);
            }
            resultSet.close();
            preparedStatement.close(); 
        } catch (SQLException ex) {
            Logger.getLogger(PostDataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        String newCommentID = baseID + "." + (Collections.max(listOrder) + 1);
        return newCommentID;
    }
}
