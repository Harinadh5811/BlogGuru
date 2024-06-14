package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.CreatePost;
import com.klef.jfsd.springboot.repository.CreatePostRepository;

public interface CreatePostService {

    String postregister(CreatePost post);

    String updatepost(CreatePost post);

    CreatePost viewuserbyid(int postId);

	List<CreatePost> viewallposts();

	List<CreatePost> userblogs1();
    CreatePost ViewpostByID(int id);
    void addCommentToPost(int postId, Comment comment);
}
