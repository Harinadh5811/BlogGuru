package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.service.CommentService;

@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @PostMapping("/addComment")
    public String addCommentToPost(@RequestParam int postId, @RequestParam String commentContent, @RequestParam String YourUsername) {
        Comment comment = new Comment();
        comment.setUserName(YourUsername);
        comment.setCommentContent(commentContent);
        commentService.addComment(postId, comment);
        return "redirect:/CommentSucc.jsp"; // Redirect to the blog page
    }
    @GetMapping("/viewComments")
    public String viewComments(@RequestParam int postId, Model model) {
        List<Comment> comments = commentService.getCommentsByPostId(postId);
        model.addAttribute("comments", comments);
        return "userblogs1"; // Forward to the UserBlog1 JSP
    }

}
