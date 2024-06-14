package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.CreatePost;
import com.klef.jfsd.springboot.repository.CreatePostRepository;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository commentRepository;

    @Autowired
    private CreatePostRepository createPostRepository;

    @Override
    public Comment addComment(int postId, Comment comment) {
        CreatePost post = createPostRepository.findById(postId).orElse(null);
        if (post != null) {
            comment.setPost(post);
            return commentRepository.save(comment);
        }
        return null;
    }

    @Override
    public List<Comment> getCommentsByPostId(int postId) {
        return commentRepository.findByPost_Id(postId);
    }

	
}

