package com.sms.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.service.user.UserService;

/**
 * @author MACBOOK
 * Feb 3, 2016 11:17:10 PM
 */

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	private ServletConfig config;
	public void setServletConfig(ServletConfig servletConfig) {
		config = servletConfig;
		
	}  
	
	@RequestMapping(value = "/sms/user-profile.*", method = RequestMethod.GET)
	public String userProfile(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model)  throws IOException {

		return "/sms/user/userprofile";
	}
	
	
	@RequestMapping(value = "/sms/userlist.*")
	public String userList(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model)  throws IOException {

		return "/sms/user/userlist";
	}
	
}
