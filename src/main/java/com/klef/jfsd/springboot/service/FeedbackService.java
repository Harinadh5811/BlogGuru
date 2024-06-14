package com.klef.jfsd.springboot.service;
import java.util.List;
import com.klef.jfsd.springboot.model.Feedback;

public interface FeedbackService {

    String feedbackregister(Feedback post);

    List<Feedback> viewallfeedback();
}
