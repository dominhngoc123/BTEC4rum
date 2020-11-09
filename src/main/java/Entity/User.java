/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Ngoc Do Minh
 */
public class User {
    private String accountEmail;
    private String _username;
    private String _password;
    private String userFullName;
    private String userAddress;
    private String _role;
    private String _status;
    private String userDoB;
    private String userAvatar;
    private String userGender;
    private String userDescription;
    private String dateAdded; 

    public User() {
    }

    public User(String accountEmail, String _username, String _password, String userFullName, String userAddress, String _role, String _status, String userDoB, String userAvatar, String userGender, String userDescription, String dateAdded) {
        this.accountEmail = accountEmail;
        this._username = _username;
        this._password = _password;
        this.userFullName = userFullName;
        this.userAddress = userAddress;
        this._role = _role;
        this._status = _status;
        this.userDoB = userDoB;
        this.userAvatar = userAvatar;
        this.userGender = userGender;
        this.userDescription = userDescription;
        this.dateAdded = dateAdded;
    }

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

    public String getRole() {
        return _role;
    }

    public void setRole(String _role) {
        this._role = _role;
    }

    public String getStatus() {
        return _status;
    }

    public void setStatus(String _status) {
        this._status = _status;
    }

    public String getUserDoB() {
        return userDoB;
    }

    public void setUserDoB(String userDoB) {
        this.userDoB = userDoB;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
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
    
}
