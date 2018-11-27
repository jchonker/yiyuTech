package com.eternity.tech.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.Cookies;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eternity.tech.service.AdminService;
import com.eternity.tech.service.EmpService;

@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	
	@Resource(name="empService")
	private EmpService empService;
	
	public void setEmpService(EmpService empService) {
		this.empService = empService;
	}




	//登录功能
	@RequestMapping("/login")
	public ModelAndView doLogin(String username,String password,String usertype,String remember,HttpServletRequest session,HttpServletResponse response,HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		//测试
		System.out.println("传过来的值为："+username+".."+password+".."+usertype+".."+remember);
		
		//管理员登录
		if(usertype.equals("admin")) {
			
			String username_cookie_admin = null;
			String password_cookie_admin = null;
			
			
			
			//获取客户端传来的cookie
			Cookie[] cookies_admin = request.getCookies();
			for(int i=0;i < cookies_admin.length;i++) {
				username_cookie_admin = cookies_admin[i].getName();
				password_cookie_admin = cookies_admin[i].getValue();
			}
			
			//如果用户名和密码的cookie值不为空
			if(username_cookie_admin != null && password_cookie_admin != null) {
				username = username_cookie_admin;
				password = password_cookie_admin;
			}
			
			
			int row_admin = adminService.selectUser(username,password);
			
			//测试
			System.out.println("查询结果："+row_admin);
			
			//如果数据库中有此用户名
			if(row_admin != 0) {
				session.setAttribute(username, username);
				mv.addObject(username, username);
				mv.setViewName("homepage_admin");
			}
			//没有此用户名
			else {
				mv.setViewName("loginerror");
			}
			
			
			//如果记住密码
			if(remember.equals("1")) {
				//将cookie写入客户端
				//实例化cookie
				Cookie cookie1_admin = new Cookie("username",username);
				Cookie cookie2_admin = new Cookie("password",password);
				//设置cookie的生命周期(时间单位：秒)
				/*cookie1_admin.setMaxAge(600);
				cookie2_admin.setMaxAge(600);*/
				//添加cookie到客户端
				response.addCookie(cookie1_admin);
				response.addCookie(cookie2_admin);
			}
		}
		
		//普通员工登录
		if(usertype.equals("employee")) {
			
			int row_emp = empService.selectUser(username, password);
			//如果数据库中有用户名
			if(row_emp != 0) {
				session.setAttribute(username, username);
				mv.addObject(username, username);
				mv.setViewName("homepage_emp");
			}
			//数据库中没有此用户名
			else {
				mv.setViewName("loginerror");
			}
		}
		
		return mv;
	}
	
	
	

	//登录主页面跳转到注册用户页面
	@RequestMapping("/regist")
	public String doRegist() {

		return "regist";
		
	}
	
	
	
	//退出系统/跳转到登录页面
	@RequestMapping("/quit")
	public String doQuit() {
		
		return "login";
		
	}
	
	
	
	
}
