package com.smsframework.mvc.tags.ui.pagination;

/**
 * @author MACBOOK
 * Jan 21, 2016 3:54:18 PM
 */
public class DefaultPaginationRenderer extends AbstractPaginationRenderer {

	public DefaultPaginationRenderer() {
		this.firstPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[Ã¬Â²ËœÃ¬ï¿½Å’]</a>&#160;";
		this.previousPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[Ã¬ï¿½Â´Ã¬Â â€ž]</a>&#160;";
		this.currentPageLabel = "<strong>{0}</strong>&#160;";
		this.otherPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a>&#160;";
		this.nextPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[Ã«â€¹Â¤Ã¬ï¿½Å’]</a>&#160;";
		this.lastPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">[Ã«Â§Ë†Ã¬Â§â‚¬Ã«Â§â€°]</a>&#160;";
	}

	public String renderPagination(PaginationInfo paginationInfo,
			String jsFunction) {
		return super.renderPagination(paginationInfo, jsFunction);
	}
}
