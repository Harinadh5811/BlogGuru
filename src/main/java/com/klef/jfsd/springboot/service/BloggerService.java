package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.CreatePost;

public interface BloggerService 
{

  
  public String userregister(Blogger b);
  public String updateuser(Blogger b);
  public Blogger viewuserbyid(int uid);
  public Blogger checkuserlogin(String email,String pwd);
  List<CreatePost> userblogs1();
  
}