package com.smsframework.mvc.tags.ui.pagination;

/**
 * @author MACBOOK Jan 21, 2016 5:53:01 PM
 */
public abstract interface PaginationManager {
	
	public abstract PaginationRenderer getRendererType(String paramString);
	
}
