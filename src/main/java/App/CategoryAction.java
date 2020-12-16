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
    private Category category;
    private User user;
    private Topic topic;
    private List<Category> listCategory;
    private List<Category> listCategory1;
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

    public List<Category> getListCategory1() {
        return listCategory1;
    }

    public void setListCategory1(List<Category> listCategory1) {
        this.listCategory1 = listCategory1;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
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
    public String getDataByID()
    {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        UserDataProcess userDataProcess = new UserDataProcess();
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        category = categoryDataProcess.getDatabyID(categoryID);
        listTopic = topicDataProcess.getData();
        listUser = userDataProcess.getModerator();
        return "DETAILCATEGORY";
    }
    public String getModerator()
    {
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        category = categoryDataProcess.getDatabyID(categoryID);
        return "MODERATOR";
    }
    public String getDataByTopic()
    {
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        listCategory1 = categoryDataProcess.getDataByTopic(topicID);
        return "LISTCATEGORYINTOPIC";
    }
    
    public String addCategory()
    {
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        if (categoryDataProcess.addCategory(categoryName, categoryDescription, topicID, accountEmail))
        {
            return "ADDCATEGORYSUCCESS";
        }
        return "ADDCATEGORYFAILED";
    }
    public String updateCategory()
    {
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        if (categoryDataProcess.updateCategory(categoryID, categoryName, categoryDescription, topicID, accountEmail))
        {
            return "UPDATECATEGORYSUCCESS";
        }
        return "UPDATECATEGORYFAILED";
    }
    public String deleteCategory()
    {
        CategoryDataProcess categoryDataProcess = new CategoryDataProcess();
        if (categoryDataProcess.deleteCategory(categoryID))
        {
            return "DELETECATEGORYSUCCESS";
        }
        return "DELETECATEGORYFAILED";
    }
}
