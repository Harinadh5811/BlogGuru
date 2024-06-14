package com.klef.jfsd.springboot.service;


import java.util.List;	
import java.util.Optional;	

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.CreatePost;
import com.klef.jfsd.springboot.repository.BloggerRepository;
import com.klef.jfsd.springboot.repository.CreatePostRepository; 


@Service
public class BloggerServiceImpl implements BloggerService
{

  @Autowired
  private CreatePostRepository createPostRepository;
  @Autowired
  private BloggerRepository bloggerRepository;
  
  
  @Override
  public String userregister(Blogger b) {
    bloggerRepository.save(b);
    return "User Added Successfully";
  }

  @Override
  public String updateuser(Blogger b) {
    Blogger blo=bloggerRepository.findById(b.getId()).get();
    blo.setName(b.getName());
    blo.setPassword(b.getPassword());
    blo.setContact(b.getPassword());
    
    bloggerRepository.save(blo);
    return "User Update Successfully";
  }

  @Override
  public Blogger viewuserbyid(int uid) {
    Optional<Blogger> obj=bloggerRepository.findById(uid);
    if(obj.isPresent())
         {
           Blogger blo = obj.get();
           
           return blo;
         }
         else
         {
           return null;
         }
  }

  @Override
  public Blogger checkuserlogin(String email, String pwd) {
    return bloggerRepository.checkuserlogin(email, pwd);

  }
  @Override
  public List<CreatePost> userblogs1() {
      return createPostRepository.findAll(); // Retrieve all blog posts
  }

}