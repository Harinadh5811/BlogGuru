package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Create_Feedback_table")
public class Feedback {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @Column(name = "Feedback_Content",length = 5000)
    private String feedbackContent;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getfeedbackContent() {
        return feedbackContent;
    }

    public void setfeedbackContent(String feedbackContent) {
        this.feedbackContent = feedbackContent;
    }
    @Override
	public String toString() {
		return "Feedback [id=" + id + ", feedbackContent=" + feedbackContent + "]";
	}
}
