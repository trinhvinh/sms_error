package com.sms.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.common.utils.Command;
import com.sms.service.user.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {

	@Autowired
	UserService userService;
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index.*", method = RequestMethod.GET)
	public String Index(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		@SuppressWarnings("unused")
		String currPath = request.getParameter("path");
		
		logger.info(String.format("Welcome home! The client locale is {0}.", locale));
		String currUserName = Command.getUserLogined(request, response);
		System.out.println(currUserName);
		if (currUserName.equals("")) {
			return "redirect:/login.sms";
			
		} else {
			return "index";
		}
	}
	
	
	@RequestMapping(value = "/403.*", method = RequestMethod.GET)
    public String accesssDenied(Locale locale, Model model) {
		//ModelAndView model = new ModelAndView();
        // check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);
            model.addAttribute("username", userDetail.getUsername());
        }
        return "403";
    }
	
	
	
}
