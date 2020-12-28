/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.Post;
import Model.PostDataProcess;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
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
    private List<Post> listForumPost;
    private List<Post> listNewPost;
    private List<List<String>> commentCount;

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

    public List<Post> getListForumPost() {
        return listForumPost;
    }

    public void setListForumPost(List<Post> listForumPost) {
        this.listForumPost = listForumPost;
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

    public List<List<String>> getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(List<List<String>> commentCount) {
        this.commentCount = commentCount;
    }

    public List<Post> getListNewPost() {
        return listNewPost;
    }

    public void setListNewPost(List<Post> listNewPost) {
        this.listNewPost = listNewPost;
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
    
    public String getForumPost() {
        PostDataProcess postDataProcess = new PostDataProcess();
        listForumPost = postDataProcess.getForumDisplayPost();
        commentCount = new ArrayList<List<String>>();
        for (Post p: listForumPost)
        {
            List<String> tmp = new ArrayList<>();
            tmp.add(p.getPostID());
            tmp.add(String.valueOf(postDataProcess.getCommentCount(p.getPostID())));
            commentCount.add(tmp);
        }
        listNewPost = postDataProcess.getNewPost();
        return "FORUMPOSTDATA";
    }

    public String getPostByID() {
        PostDataProcess postDataProcess = new PostDataProcess();
        listPost = postDataProcess.getPostByID(postID);
        listNewPost = postDataProcess.getNewPost();
        return "POSTDETAIL";
    }

    public String getPostbyEmail() {
        PostDataProcess postDataProcess = new PostDataProcess();
        listPost = postDataProcess.getDataByPosterEmail(accountEmail);
        listNewPost = postDataProcess.getNewPost();
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
        if (postDataProcess.adminUpdatePost(postID, postTitle, postContent, threadID))
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
//    public static void main(String[] args) {
//        PostDataProcess postDataProcess = new PostDataProcess();
//        List<Post> listForumPost = postDataProcess.getForumDisplayPost();
//        List<List<String>> commentCount = new ArrayList<List<String>>();
//        for (Post p: listForumPost)
//        {
//            List<String> tmp = new ArrayList<>();
//            tmp.add(p.getPostID());
//            tmp.add(String.valueOf(postDataProcess.getCommentCount(p.getPostID())));
//            commentCount.add(tmp);
//        }
//        for (int i = 0; i < commentCount.size(); i++) {
//            System.out.println(commentCount.get(i));
//        }
//    }
}
