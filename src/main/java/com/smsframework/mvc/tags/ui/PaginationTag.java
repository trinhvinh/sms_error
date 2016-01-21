package com.smsframework.mvc.tags.ui;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.smsframework.mvc.tags.ui.pagination.DefaultPaginationManager;
import com.smsframework.mvc.tags.ui.pagination.PaginationInfo;
import com.smsframework.mvc.tags.ui.pagination.PaginationManager;
import com.smsframework.mvc.tags.ui.pagination.PaginationRenderer;

/**
 * @author MACBOOK Jan 21, 2016 3:34:22 PM
 */
public class PaginationTag extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PaginationInfo paginationInfo;
	private String type;
	private String jsFunction;

	public int doEndTag() throws JspException {
		try {
			JspWriter out = this.pageContext.getOut();

			@SuppressWarnings("deprecation")
			WebApplicationContext ctx = RequestContextUtils.getWebApplicationContext(this.pageContext.getRequest(),
							this.pageContext.getServletContext());
			PaginationManager paginationManager;
			if (ctx.containsBean("paginationManager")) {
				paginationManager = (PaginationManager) ctx.getBean("paginationManager");
			} else {
				paginationManager = new DefaultPaginationManager();
			}
			PaginationRenderer paginationRenderer = paginationManager.getRendererType(this.type);
			String contents = paginationRenderer.renderPagination(this.paginationInfo, this.jsFunction);
			out.println(contents);
			return 6;
		} catch (IOException e) {
			throw new JspException();
		}
	}

	public void setJsFunction(String jsFunction) {
		this.jsFunction = jsFunction;
	}

	public void setPaginationInfo(PaginationInfo paginationInfo) {
		this.paginationInfo = paginationInfo;
	}

	public void setType(String type) {
		this.type = type;
	}

}
