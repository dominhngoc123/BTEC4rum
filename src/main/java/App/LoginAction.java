/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.User;
import Model.LoginDataProcess;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Ngoc Do Minh
 */
public class LoginAction extends ActionSupport implements SessionAware {

    SessionMap<String, Object> sessionMap;
    private String userEmail;
    private String adminUsername;
    private String adminPassword;
    private String userFullName;
    private String userAddress;
    private String userRole;
    private String userStatus;
    private String userDoB;
    private String userAvatar;
    private String userGender;
    private String userDescription;
    private String userPhonenumber;
    private String dateAdded;

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

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public String getUserDoB() {
        return userDoB;
    }

    public void setUserDoB(String userDoB) {
        this.userDoB = userDoB;
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
    private String msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public String getUserPhonenumber() {
        return userPhonenumber;
    }

    public void setUserPhonenumber(String userPhonenumber) {
        this.userPhonenumber = userPhonenumber;
    }

    public LoginAction() {
    }

    public String checkLogin() {
        String loggedUserEmail = null;
        if (sessionMap.containsKey("userEmail")) {
            loggedUserEmail = (String) sessionMap.get("userEmail");
        }
        if (loggedUserEmail != null) {
            return "LOGINSUCCESS";
        }
        LoginDataProcess loginDataProcess = new LoginDataProcess();
        User user = loginDataProcess.checkLogin(userEmail);
        if (user.getAccountEmail() == null) {
            loginDataProcess.addUser(userEmail, userFullName, "", userAvatar);
            userRole = "3";
            userStatus = "1";
        } else {
            userEmail = user.getAccountEmail();
            adminUsername = user.getUsername();
            adminPassword = user.getPassword();
            userFullName = user.getUserFullName();
            userAddress = user.getUserAddress();
            userRole = user.getRole();
            userStatus = user.getStatus();
            userDoB = user.getUserDoB();
            userAvatar = user.getUserAvatar();
            userGender = user.getUserGender();
            userDescription = user.getUserDescription();
            dateAdded = user.getDateAdded();
            userPhonenumber = user.getUserPhonenumber();
        }
        sessionMap.put("accountEmail", userEmail);
        sessionMap.put("adminUsername", adminUsername);
        sessionMap.put("adminPassword", adminPassword);
        sessionMap.put("userFullName", userFullName);
        sessionMap.put("userAddress", userAddress);
        sessionMap.put("userRole", userRole);
        sessionMap.put("userStatus", userStatus);
        sessionMap.put("userDoB", userDoB);
        sessionMap.put("userAvatar", userAvatar);
        sessionMap.put("userGender", userGender);
        sessionMap.put("userDescription", userDescription);
        sessionMap.put("dateAdded", dateAdded);
        sessionMap.put("userPhonenumber", userPhonenumber);
        return "LOGINSUCCESS";
    }

    public String checkAdminAccount() {
        LoginDataProcess loginDataProcess = new LoginDataProcess();
        if (loginDataProcess.checkAdminAccount(adminUsername, adminPassword)) {
            return "ADMINLOGINSUCCESS";
        }
        msg = "Wrong username or password";
        return "ADMINLOGINFAILED";
    }

    public String logOut() {
        sessionMap.invalidate();
        return "LOGOUTSUCCESS";
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;
        sessionMap.put("login", "true");
    }

}
