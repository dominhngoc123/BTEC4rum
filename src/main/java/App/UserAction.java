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
    private String _username;
    private String _password;
    private String userFullName;
    private String userAddress;
    private int _role;
    private int _status;
    private String userAvatar;
    private int userGender;
    private String userDescription;
    private String dateAdded;
    private List<User> listAllUser;

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getUsername() {
        return _username;
    }

    public void setUsername(String _username) {
        this._username = _username;
    }

    public String getPassword() {
        return _password;
    }

    public void setPassword(String _password) {
        this._password = _password;
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
        return _role;
    }

    public void setRole(int _role) {
        this._role = _role;
    }

    public int getStatus() {
        return _status;
    }

    public void setStatus(int _status) {
        this._status = _status;
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
    
    public String getData()
    {
        UserDataProcess userDataProcess = new UserDataProcess();
        listAllUser = userDataProcess.getData();
        return "LISTALLACCOUNT";
    }
    
}
