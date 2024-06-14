package com.klef.jfsd.springboot.service;

import java.util.List	;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.CreatePost;
import com.klef.jfsd.springboot.repository.CreatePostRepository;

@Service
public class CreatePostServiceImpl implements CreatePostService {

    @Autowired
    private CreatePostRepository createPostRepository;

    @Override
    public String postregister(CreatePost post) {
        try {
            createPostRepository.save(post); // Save the new post to the database
            return "Post Created Successfully";
        } catch (Exception e) {
            return "Error Creating Post: " + e.getMessage();
        }
    }

    @Override
    public String updatepost(CreatePost post) {
		return null;
        // Your existing code for updating a post
    }

    @Override
    public CreatePost viewuserbyid(int postId) {
		return null;
        // Your existing code for viewing a post by ID
    }

    @Override
    public List<CreatePost> viewallposts() {
        return createPostRepository.findAll(); // Retrieve all blog posts
    }
    
    @Override
    public List<CreatePost> userblogs1() {
        return createPostRepository.findAll(); // Retrieve all blog posts
    }
	@Override
	public CreatePost ViewpostByID(int id) {	
		  return createPostRepository.findById(id).get();
	}

	@Override
    public void addCommentToPost(int postId, Comment comment) {
        CreatePost post = createPostRepository.findById(postId).orElse(null);
        if (post != null) {
            List<Comment> comments = post.getComments();
            comments.add(comment);
            comment.setPost(post);
            post.setComments(comments);
            createPostRepository.save(post);
        }
    }
    
    
}
