package com.sms.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gws.common.util.command;
import com.gws.vo.RequestVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {

	private static final Logger logger = LoggerFactory
			.getLogger(IndexController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index.*", method = RequestMethod.GET)
	public String Index(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String currPath = request.getParameter("path");
		logger.info(String.format("Welcome home! The client locale is {0}.", locale));
		String currUserName = command.getUserLogined(request, response);
		if ("".equals(currUserName)) {
			return "redirect:/login.gw";
		} else {
			return "index_interface";
		}
	}

}
