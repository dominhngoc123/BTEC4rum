/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import Entity.Thread;
import Model.ThreadDataProcess;

/**
 *
 * @author Ngoc Do Minh
 */
public class ThreadAction extends ActionSupport {
    private String threadID;
    private String threadName;
    private String threadDescription;
    private String categoryID;
    private String dateAdded;
    private List<Thread> listThread;
    public String getThreadID() {
        return threadID;
    }

    public void setThreadID(String threadID) {
        this.threadID = threadID;
    }

    public String getThreadName() {
        return threadName;
    }

    public void setThreadName(String threadName) {
        this.threadName = threadName;
    }

    public String getThreadDescription() {
        return threadDescription;
    }

    public void setThreadDescription(String threadDescription) {
        this.threadDescription = threadDescription;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }

    public List<Thread> getListThread() {
        return listThread;
    }

    public void setListThread(List<Thread> listThread) {
        this.listThread = listThread;
    }
    
    public ThreadAction() {
    }
    
    public String getData()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        listThread = threadDataProcess.getData();
        return "LISTTHREAD";
    }    
}
