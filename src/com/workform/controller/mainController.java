package com.workform.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.workform.model.User;

@Controller
public class mainController {

	@RequestMapping("/main")
	public String repair(User user,HttpServletRequest request){
		
			return "/webpage/main/main";
		}
}
