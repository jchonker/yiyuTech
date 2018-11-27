package com.eternity.tech.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eternity.tech.mapper.AdminMapper;
import com.eternity.tech.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	
	//@Resource(name="adminMapper")
	@Autowired
	private AdminMapper adminMapper;
	
	public void setAdminMapper(AdminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}

	
	//查询数据库中是否有这个用户名
	public int selectUser(String username,String password) {
		
		return adminMapper.selectUser(username, password);
		
	}

	
	//修改密码
	public int updatePassword(String adminname, String oldpass, String newpass) {
		
		Integer row = adminMapper.updatePassword(adminname, oldpass, newpass);
		
		return row;
	}
	
	 
}
