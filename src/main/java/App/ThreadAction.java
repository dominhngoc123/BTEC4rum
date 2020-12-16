/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.Category;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import Entity.Thread;
import Entity.Topic;
import Model.CategoryDataProcess;
import Model.ThreadDataProcess;
import Model.TopicDataProcess;

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
    private Thread thread;
    private String topicID;
    private List<Thread> listThread;
    private List<Thread> listThread1;
    private List<Topic> listTopic;
    private List<Category> listCategory;
    
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

    public Thread getThread() {
        return thread;
    }

    public void setThread(Thread thread) {
        this.thread = thread;
    }

    public List<Thread> getListThread() {
        return listThread;
    }

    public void setListThread(List<Thread> listThread) {
        this.listThread = listThread;
    }

    public List<Topic> getListTopic() {
        return listTopic;
    }

    public void setListTopic(List<Topic> listTopic) {
        this.listTopic = listTopic;
    }

    public List<Category> getListCategory() {
        return listCategory;
    }

    public void setListCategory(List<Category> listCategory) {
        this.listCategory = listCategory;
    }

    public String getTopicID() {
        return topicID;
    }

    public void setTopicID(String topicID) {
        this.topicID = topicID;
    }

    public List<Thread> getListThread1() {
        return listThread1;
    }

    public void setListThread1(List<Thread> listThread1) {
        this.listThread1 = listThread1;
    }
    
    public ThreadAction() {
    }
    
    public String getData()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        listThread = threadDataProcess.getData();
        listTopic = topicDataProcess.getData();
        return "LISTTHREAD";
    }
    public String getDataByID()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        thread = threadDataProcess.getDataByID(threadID);
        listTopic = topicDataProcess.getData();
        return "THREADDETAIL";
    }
    public String addThread()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        if (threadDataProcess.addThread(threadName, threadDescription, categoryID))
        {
            return "ADDTHREADSUCCESS";
        }
        return "ADDTHREADFAILED";
    }
    public String getThreadByCategory()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        listThread1 = threadDataProcess.getThreadByCategory(categoryID);
        return "LISTTHREADINCATEGORY";
    }
    public String updateThread()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        if (threadDataProcess.updateThread(threadID, threadName, threadDescription, categoryID))
        {
            return "UPDATETHREADSUCCESS";
        }
        return "UPDATETHREADFAILED";
    }
    public String deleteThread()
    {
        ThreadDataProcess threadDataProcess = new ThreadDataProcess();
        if (threadDataProcess.deleteThread(threadID))
        {
            return "DELETETHREADSUCCESS";
        }
        return "DELETETHREADFAILED";
    }
}
