/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import Entity.Topic;
import Model.TopicDataProcess;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author Ngoc Do Minh
 */
public class TopicAction extends ActionSupport {
    private String topicID;
    private String topicName;
    private String topicDescription;
    private String dateAdded;
    private String msg;
    private Topic topic;
    private List<Topic> listTopic;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    
    public String getTopicID() {
        return topicID;
    }

    public void setTopicID(String topicID) {
        this.topicID = topicID;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public String getTopicDescription() {
        return topicDescription;
    }

    public void setTopicDescription(String topicDescription) {
        this.topicDescription = topicDescription;
    }

    public String getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }
    
    public List<Topic> getListTopic() {
        return listTopic;
    }

    public void setListTopic(List<Topic> listTopic) {
        this.listTopic = listTopic;
    }
    
    public TopicAction() {
    }
    
    public String getData() {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        listTopic = topicDataProcess.getData();
        return "LISTALLTOPIC";
    }
    public String getDataByID()
    {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        topic = topicDataProcess.getDatabyID(topicID);
        return "DETAILTOPIC";
    }
    public String addTopic()
    {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        if (topicDataProcess.addTopic(topicName, topicDescription))
        {
            msg = "Successfully add topic.";
            return "ADDTOPICSUCCESS";
        }
        msg = "Cannot add topic.";
        return "ADDTOPICFAILED";
    }
    
    public String updateTopic()
    {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        if (topicDataProcess.updateTopic(topicID, topicName, topicDescription))
        {
            msg = "Successfully update topic.";
            return "UPDATETOPICSUCCESS";
        }
        msg = "Cannot update topic.";
        return "UPDATETOPICFAILED";
    }
    public String deleteTopic()
    {
        TopicDataProcess topicDataProcess = new TopicDataProcess();
        if (topicDataProcess.deleteTopic(topicID))
        {
            msg = "Successfully delete topic.";
            return "DELETETOPICSUCCESS";
        }
        msg = "Cannot delete topic.";
        return "DELETETOPICFAILED";
    }
}
