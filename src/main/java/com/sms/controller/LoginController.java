package com.sms.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.service.user.UserService;
import com.sms.vo.UserVO;

/**
 * @author MACBOOK Jan 25, 2016 5:16:20 PM
 */
@Controller
public class LoginController {

	
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login.*", method = RequestMethod.GET)
	public String login(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model) {
		
		return "/security/login";
	}

	@RequestMapping(value = "/login.*", method = RequestMethod.POST)
	public void loginAct(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model) throws IOException {

		@SuppressWarnings("deprecation")
		String p_Username = java.net.URLEncoder.encode(request.getParameter("username"));
		@SuppressWarnings("deprecation")
		String p_Password = java.net.URLEncoder.encode(request.getParameter("password"));

		UserVO uservo = new UserVO();
		uservo.setUserId(p_Username);
		uservo.setUserPassword(p_Password);

		UserVO getUser = userService.checkLogin(uservo);
		if (getUser != null) {
			//	create session
			HttpSession session = request.getSession(true);
			session.setAttribute("CurrLoginInfo_pk", getUser.getPk());
			System.out.println("This is pk user " + getUser.getPk());			
			session.setAttribute("CurrentLoginInfo_id", getUser.getUserId());
			System.out.println("This is user id " + getUser.getUserId());			
			session.setAttribute("CurrLoginInfo_UserName", p_Username);
			session.setAttribute("CurrLoginInfo_FullName", getUser.getUserName());			
			response.getWriter().write("true");
			
		} else {
			model.addAttribute("msg", "Can't login, plese check and try again!");
			response.getWriter().write("false");
		}
	}
	
	@RequestMapping(value = "/logout.*", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model) {
        HttpSession session = request.getSession();
        session.setAttribute("CurrLoginInfo", "");
        session.setAttribute("CurrLoginInfo_UserName", "");
        session.setAttribute("CurrLoginInfo_fullname", "");
        session.setAttribute("CurrLoginInfo_pk", "");
        session.setAttribute("CurrLoginInfo_id", "");

        return "redirect:/index.sms";
    }
	
	@RequestMapping(value = "/recover.*", method = RequestMethod.GET)
	public String recover(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model)  throws IOException {

		return "/security/recover";
	}
	
	@RequestMapping(value = "/recovery-password.*", method = RequestMethod.GET)
	public String recovery(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model)  throws IOException {

		return "/security/recovery-password";
	}
	
	@RequestMapping(value = "/registration.*", method = RequestMethod.GET)
	public String registration(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model)  throws IOException {

		return "/security/registration";
	}
	
	

}
