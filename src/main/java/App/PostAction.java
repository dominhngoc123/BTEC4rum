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
    
    public PostAction() {
    }

    public String addNewPost() {
        PostDataProcess postDataProcess = new PostDataProcess();
        if (postDataProcess.createPost(postTitle, postContent, threadID, accountEmail, role)) {
            return "USERADDPOSTSUCCESS";
        }
        return "USERADDPOSTFAILED";
    }
    
    public String getAllPost()
    {
        PostDataProcess postDataProcess = new PostDataProcess();
        listPost = postDataProcess.getData();
        return "POSTDATA";
    }
    
    public String getPostByID()
    {
        PostDataProcess postDataProcess = new PostDataProcess();
        post = postDataProcess.getPostByID(postID);
        return "POSTDETAIL";
    }
}
