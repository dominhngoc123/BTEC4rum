/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.Post;
import Model.PostDataProcess;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author Ngoc Do Minh
 */
public class PostAction extends ActionSupport {

    private String postID;
    private String postTitle;
    private String postContent;
    private String threadID;
    private String accountEmail;
    private String dateAdded;
    private String status;
    private int role;
    private String approvedDate;
    private Post post;
    private List<Post> listPost;
    private List<Post> listNewPost;
    private int commentCount;

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostContent() {
        return postContent;
    }

    public void setPostContent(String postContent) {
        this.postContent = postContent;
    }

    public String getThreadID() {
        return threadID;
    }

    public void setThreadID(String threadID) {
        this.threadID = threadID;
    }

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public List<Post> getListPost() {
        return listPost;
    }

    public void setListPost(List<Post> listPost) {
        this.listPost = listPost;
    }

    public List<Post> getListNewPost() {
        return listNewPost;
    }

    public void setListNewPost(List<Post> listNewPost) {
        this.listNewPost = listNewPost;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public String getApprovedDate() {
        return approvedDate;
    }

    public void setApprovedDate(String approvedDate) {
        this.approvedDate = approvedDate;
    }

    public int getCommentLevel() {
        return commentCount;
    }

    public void setCommentLevel(int commentCount) {
        this.commentCount = commentCount;
    }

    public PostAction() {
    }

    public String addNewPost() {
        PostDataProcess postDataProcess = new PostDataProcess();
        if (postDataProcess.createPost(postTitle, postContent, threadID, accountEmail, status)) {
            return "USERADDPOSTSUCCESS";
        }
        return "USERADDPOSTFAILED";
    }

    public String addNewComment() {
        PostDataProcess postDataProcess = new PostDataProcess();
        if (postDataProcess.createComment(postID, postTitle, postContent, threadID, accountEmail)) {
            return "USERADDCOMMENTSUCCESS";
        }
        return "USERADDCOMMENTFAILED";
    }

    public String getAllPost() {
        PostDataProcess postDataProcess = new PostDataProcess();
        listPost = postDataProcess.getPost();
        return "POSTDATA";
    }

    public String getPostByID() {
        PostDataProcess postDataProcess = new PostDataProcess();
        listPost = postDataProcess.getPostByID(postID);
        commentCount = listPost.size();
        return "POSTDETAIL";
    }

    public String getPostbyEmail() {
        PostDataProcess postDataProcess = new PostDataProcess();
        listPost = postDataProcess.getDataByPosterEmail(accountEmail);
        return "LISTPOSTBYEMAIL";
    }

    public String getSpecificPost() {
        PostDataProcess postDataProcess = new PostDataProcess();
        post = postDataProcess.getSpecificPost(postID);
        return "SPECIFICPOST";
    }
    
    public String updatePost()
    {
        PostDataProcess postDataProcess = new PostDataProcess();
        if (postDataProcess.updatePost(postID, status))
        {
            return "UPDATEPOSTSUCCESS";
        }
        return "UPDATEPOSTFAILED";
    }
    
    public String updatePostStatus()
    {
        PostDataProcess postDataProcess = new PostDataProcess();
        if (postDataProcess.updatePost(postID, status))
        {
            return "UPDATEPOSTSTATUSSUCCESS";
        }
        return "UPDATEPOSTSTATUSFAILED";
    }
    
    public String deletePost()
    {
        PostDataProcess postDataProcess = new PostDataProcess();
        if (postDataProcess.deletePost(postID))
        {
            return "DELETEPOSTSUCCESS";
        }
        return "DELETEPOSTFAILED";
    }
}
