package com.klef.jfsd.springboot.service;

import java.util.List;	

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

@Service
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    private FeedbackRepository FeedbackPostRepository;

    @Override
    public String feedbackregister(Feedback post) {
        try {
            FeedbackPostRepository.save(post); 
            return "Feedback Recieved Successfully";
        } catch (Exception e) {
            return "Error Creating Post: " + e.getMessage();
        }
    }
	@Override
	public List<Feedback> viewallfeedback() {
		return FeedbackPostRepository.findAll();
	}
}
