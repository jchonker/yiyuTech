package com.eternity.tech.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eternity.tech.service.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {

	@Resource(name="empService")
	private EmpService empService;

	public void setEmpService(EmpService empService) {
		this.empService = empService;
	}
	
	
	
}
