package com.sms.vo;

import com.sms.common.vo.ComDefaultVO;

/**
 * @author MACBOOK Jan 20, 2016 6:09:45 PM
 */
public class NewsVO extends ComDefaultVO {

	private long pk;
	private String title;
	private String content;

	public NewsVO() {

	}

	public long getPk() {
		return pk;
	}

	public void setPk(long pk) {
		this.pk = pk;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
