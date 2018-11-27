package com.eternity.tech.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.eternity.tech.pojo.Emp;

public interface EmpService {

		//查询数据库中是否有输入的用户名及其密码
		int selectUser(@Param("username") String username,@Param("password") String password);
	
		//根据指定的name查询所有的此用户的所有数据
		Emp selectAll(String name);
		
		//查询emp表中所有用户名
		ArrayList<String> selectAllName();
		
		//根据输入的姓名查询emp表中是否存在此姓名，并且可能有相同的姓名，都查询出来
		//搜索框使用
		ArrayList<String> selectName(String name);
		
		//修改密码
		int updatepassword(String name,String oldpass,String newpass);	
		
}
