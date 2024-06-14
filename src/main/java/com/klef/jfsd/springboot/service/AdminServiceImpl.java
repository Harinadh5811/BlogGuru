package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.CreatePost;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BloggerRepository;
import com.klef.jfsd.springboot.repository.CreatePostRepository;
import com.klef.jfsd.springboot.repository.FeedbackRepository;


@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private BloggerRepository bloggerRepository;

    @Autowired
    private CreatePostRepository createPostRepository; // Inject the CreatePostRepository
 
    @Autowired
    private FeedbackRepository feedbackRepository;
    
    @Autowired
    private CommentRepository commentRepository;
    @Override
    public List<Blogger> viewallusers() {
        return bloggerRepository.findAll();
    }

    @Override
    public Blogger viewuserbyid(int uid) {
        Optional<Blogger> obj = bloggerRepository.findById(uid);

        if (obj.isPresent()) {
            Blogger user = obj.get();
            return user;
        } else {
            return null;
        }
    }

    @Override
    public Admin checkadminlogin(String uname, String pwd) {
        return adminRepository.checkadminlogin(uname, pwd);
    }

    @Override
    public long userscount() {
        return bloggerRepository.count();
    }

    @Override
    public int updatestatus(int uid, boolean status) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public String deleteuser(int uid) {
        Optional<Blogger> obj = bloggerRepository.findById(uid);
        String msg = null;

        if (obj.isPresent()) {
            Blogger user = obj.get();
            bloggerRepository.delete(user);
            msg = "Blogger Deleted Successfully";
        } else {
            msg = "Blogger Not Found";
        }

        return msg;
    }

    @Override
    public List<CreatePost> viewallblogs() {
        return createPostRepository.findAll(); // Retrieve all blog posts
    }
    @Override
    public String deletepost(int uid) {
        Optional<CreatePost> obj = createPostRepository.findById(uid);
        String msg = null;

        if (obj.isPresent()) {
            CreatePost user = obj.get();
            createPostRepository.delete(user);
            msg = "Post Deleted Successfully";
        } else {
            msg = "Post Not Found";
        }

        return msg;
    }
    @Override
    public String deletecmt(int uid) {
        Optional<Comment> obj = commentRepository.findById(uid);
        String msg = null;

        if (obj.isPresent()) {
            Comment cmt = obj.get();
            commentRepository.delete(cmt);
            msg = "Comment Deleted Successfully";
        } else {
            msg = "Comment Not Found";
        }

        return msg;
    }

	@Override
	public List<Feedback> viewallfeedback() {
		 return feedbackRepository.findAll();
	}

	@Override
	public List<Comment> ViewallComments() {
		return commentRepository.findAll();
	}
}
