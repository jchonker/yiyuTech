package com.eternity.tech.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("adminMapper")
public interface AdminMapper {

	//登录查询
	int selectUser(@Param("username") String username,@Param("password") String password);
	
	
	//修改管理员自己的密码
	int updatePassword(String adminname,String oldpass,String newpass);
	
}
