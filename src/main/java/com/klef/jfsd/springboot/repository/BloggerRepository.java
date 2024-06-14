package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;		
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Blogger;

@Repository
public interface BloggerRepository extends JpaRepository<Blogger, Integer>
{

  
  @Query("select b from Blogger b where b.email=?1 and b.password=?2")
  public Blogger checkuserlogin(String email,String pwd);
}
