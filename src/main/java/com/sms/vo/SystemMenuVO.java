package com.sms.vo;

import com.sms.common.vo.ComDefaultVO;

/**
 * @author MACBOOK Jan 20, 2016 4:19:56 PM
 */
public class SystemMenuVO extends ComDefaultVO{

	private long pk;
	private String active_yn;
	private String menu_code;
	private String menu_fname;
	private String menu_lname;
	private String menu_name;
	private String menu_type;
	private String parent_code;
	private long parent_pk;
	private String url;
	private long ord;

	public SystemMenuVO() {
		
	}
	
	public long getPk() {
		return pk;
	}

	public void setPk(long pk) {
		this.pk = pk;
	}

	public String getActive_yn() {
		return active_yn;
	}

	public void setActive_yn(String active_yn) {
		this.active_yn = active_yn;
	}

	public String getMenu_code() {
		return menu_code;
	}

	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}

	public String getMenu_fname() {
		return menu_fname;
	}

	public void setMenu_fname(String menu_fname) {
		this.menu_fname = menu_fname;
	}

	public String getMenu_lname() {
		return menu_lname;
	}

	public void setMenu_lname(String menu_lname) {
		this.menu_lname = menu_lname;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public String getMenu_type() {
		return menu_type;
	}

	public void setMenu_type(String menu_type) {
		this.menu_type = menu_type;
	}

	public String getParent_code() {
		return parent_code;
	}

	public void setParent_code(String parent_code) {
		this.parent_code = parent_code;
	}

	public long getParent_pk() {
		return parent_pk;
	}

	public void setParent_pk(long parent_pk) {
		this.parent_pk = parent_pk;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public long getOrd() {
		return ord;
	}

	public void setOrd(long ord) {
		this.ord = ord;
	}

}
