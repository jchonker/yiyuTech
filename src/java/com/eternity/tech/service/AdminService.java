package com.eternity.tech.service;

import org.apache.ibatis.annotations.Param;

public interface AdminService {

	//修改密码
	int updatePassword(String adminname,String oldpass,String newpass);

	//登录查询
	int selectUser(String username,String password);
}
