/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

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
    String userEmail;
    String adminUsername;
    String adminPassword;
    String userAvatar;
    String msg;

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
    String userName;

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
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
        if (!loginDataProcess.checkLogin(userEmail)) {
            loginDataProcess.addUser(userEmail, userName, "", userAvatar);
        }
        sessionMap.put("userEmail", userEmail);
        sessionMap.put("userName", userName);
        sessionMap.put("userAvatar", userAvatar);
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
