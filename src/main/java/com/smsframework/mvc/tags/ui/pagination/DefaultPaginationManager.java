package com.smsframework.mvc.tags.ui.pagination;

import java.util.Map;

/**
 * @author MACBOOK
 * Jan 21, 2016 5:44:37 PM
 */

public class DefaultPaginationManager implements PaginationManager {

	private Map<String, PaginationRenderer> rendererType;

	public void setRendererType(Map<String, PaginationRenderer> rendererType) {
		this.rendererType = rendererType;
	}

	public PaginationRenderer getRendererType(String type) {
		return  (PaginationRenderer) ((this.rendererType != null) && (this.rendererType.containsKey(type)) ? (PaginationRenderer) this.rendererType.get(type) : new DefaultPaginationRenderer());
	}

}
