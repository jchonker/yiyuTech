package com.eternity.tech.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.eternity.tech.mapper.EmpMapper;
import com.eternity.tech.pojo.Emp;
import com.eternity.tech.service.EmpService;

@Service("empService")
public class EmpServiceImpl implements EmpService {

	@Resource(name="empMapper")
	
	private EmpMapper empMapper;
	
	public void setEmpMapper(EmpMapper empMapper) {
		this.empMapper = empMapper;
	}

	
	
	
	//查询数据库中是否有用户名以及密码
	public int selectUser(String username, String password) {
		empMapper.selectUser(username, password);
		return 0;
	}
	
	
	//根据指定的name查询所有的此用户的所有数据
	public Emp selectAll(String name) {
		
		return empMapper.selectAll(name);
		
	}

	
	
	//查询emp表中所有用户名
	public ArrayList<String> selectAllName() {
		
		return empMapper.selectAllName();
		
	}

	
	
	//根据输入的姓名查询emp表中是否存在此姓名，并且可能有相同的姓名，都查询出来
	//搜索框使用
	public ArrayList<String> selectName(String name) {
		
		return empMapper.selectName(name);
		
	}

	
	
	//修改密码
	public int updatepassword(String name, String oldpass, String newpass) {
		
		//返回执行修改操作的影响行数
		return empMapper.updatepassword(name, oldpass, newpass);
		
	}



}
