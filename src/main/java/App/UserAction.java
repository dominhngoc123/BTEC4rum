/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.User;
import Model.UserDataProcess;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author Ngoc Do Minh
 */
public class UserAction extends ActionSupport {

    private String accountEmail;
    private String username;
    private String password;
    private String userFullName;
    private String userAddress;
    private int role;
    private int status;
    private String userAvatar;
    private int userGender;
    private String userDescription;
    private String dateAdded;
    private String searchContent;
    private List<User> listAllUser;

    public String getSearchContent() {
        return searchContent;
    }

    public void setSearchContent(String searchContent) {
        this.searchContent = searchContent;
    }

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserFullName() {
        return userFullName;
    }

    public void setUserFullName(String userFullName) {
        this.userFullName = userFullName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public int getUserGender() {
        return userGender;
    }

    public void setUserGender(int userGender) {
        this.userGender = userGender;
    }

    public String getUserDescription() {
        return userDescription;
    }

    public void setUserDescription(String userDescription) {
        this.userDescription = userDescription;
    }

    public String getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }

    public List<User> getListAllUser() {
        return listAllUser;
    }

    public void setListAllUser(List<User> listAllUser) {
        this.listAllUser = listAllUser;
    }

    public UserAction() {
    }

    public String getData() {
        UserDataProcess userDataProcess = new UserDataProcess();
        listAllUser = userDataProcess.getData();
        return "LISTALLACCOUNT";
    }

    public String blockUser() {
        UserDataProcess userDataProcess = new UserDataProcess();
        if (userDataProcess.blockUser(accountEmail, status))
        {
            return "BLOCKSUCCESS";
        }
        return "BLOCKFAILED";
    }
    
    public String searchData()
    {
        UserDataProcess userDataProcess = new UserDataProcess();
        listAllUser = userDataProcess.searchUserByName(searchContent);
        return "SEARCHDATA";
    }
}
