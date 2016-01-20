package com.sms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.sms.service.NewsService;
import com.sms.vo.NewsVO;

/**
 * @author MACBOOK Jan 20, 2016 4:21:34 PM
 */

public class SystemMenuManager {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private WebApplicationContext context;

	private NewsService newsService;

	public SystemNewsManager(HttpServletRequest request) {
		this.context = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
		newsService = (NewsService) this.context.getBean(NewsService.class);
	}

	public List<NewsVO> lsNewsVo(NewsVO newsVo) {
		newsVo.setRecordCountPerPage(5);
		newsVo.setFirstIndex(0);
		return newsService.lsNewsVo(newsVo);

	}

	public List<NewsVO> lstNewsVo() {
		NewsVO newsVo = new NewsVO();
		newsVo.setRecordCountPerPage(5);
		newsVo.setFirstIndex(0);
		return newsService.listNewsVo(newsVo);

	}
}
