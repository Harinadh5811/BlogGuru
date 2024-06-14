package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;		
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Feedback;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {
}
