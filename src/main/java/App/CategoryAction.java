/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.Category;
import Entity.Topic;
import Entity.User;
import Model.CategoryDataProcess;
import Model.TopicDataProcess;
import Model.UserDataProcess;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author Ngoc Do Minh
 */
public class CategoryAction extends ActionSupport {
    private String categoryID;
    private String categoryName;
    private String categoryDescription;
    private String topicID;
    private String accountEmail;
    private String dateAdded;
    private List<Category> listCategory;
    private List<Topic> listTopic;
    private List<User> listUser;

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public String getTopicID() {
        return topicID;
    }

    public void setTopicID(String topicID) {
        this.topicID = topicID;
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

    public List<Category> getListCategory() {
        return listCategory;
    }

    public void setListCategory(List<Category> listCategory) {
        this.listCategory = listCategory;
    }

    public List<Topic> getListTopic() {
        return listTopic;
    }

    public void setListTopic(List<Topic> listTopic) {
        this.listTopic = listTopic;
    }

    public List<User> getListUser() {
        return listUser;
    }

    public void setListUser(List<User> listUser) {
        this.listUser = listUser;
    }
    
    public CategoryAction() {
    }
    
    public String getData()
    {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        UserDataProcess userDataProcess = new UserDataProcess();
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        listCategory = categoryDataProcess.getData();
        listTopic = topicDataProcess.getData();
        listUser = userDataProcess.getModerator();
        return "LISTCATEGORY";
        
    }
    
}
