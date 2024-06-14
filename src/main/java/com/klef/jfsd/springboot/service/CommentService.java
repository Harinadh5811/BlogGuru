package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Comment;


public interface CommentService {
    Comment addComment(int postId, Comment comment);
    List<Comment> getCommentsByPostId(int postId);
}

