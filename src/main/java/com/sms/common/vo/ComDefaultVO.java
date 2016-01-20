package com.sms.common.vo;

import java.io.Serializable;
import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author MACBOOK
 * Jan 20, 2016 9:40:29 PM
 */

@XmlRootElement(name = "comDefaultVO")
public class ComDefaultVO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String searchCondition = "";
	private String searchConditionText = "";	
	private String searchUseYn = "";
	
	private int pageIndex = 1;
	private int pageUnit = 10;
	private int officepageUnit = 1;
	private int pageSize = 10;
	private int firstIndex = 1;
	private int lastIndex = 1;
	private int recordCountPerPage = 10;
	
	private String searchKeyword = "";
	private String searchKeywordFrom = "";
	private String searchKeywordTo = "";
	
	private String command = "";
	private String message = "";
	private String isContinueInsert;
	private String orderField;
	private String orderSort;
	private String menuCd;
	private String currLang;
	private String erpIntergate="N";
	private String erpUserName="";
	private String erpCompany="";
	
	/*default for earch table. it will has 5 this column*/
	private String remarks;	
	private Date crtDt;	
	private String crtBy;	
	private Date modDt;	
	private String modBy;
	private int delIf = 0;	
	private String currYear;
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchConditionText() {
		return searchConditionText;
	}
	public void setSearchConditionText(String searchConditionText) {
		this.searchConditionText = searchConditionText;
	}
	public String getSearchUseYn() {
		return searchUseYn;
	}
	public void setSearchUseYn(String searchUseYn) {
		this.searchUseYn = searchUseYn;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	public int getOfficepageUnit() {
		return officepageUnit;
	}
	public void setOfficepageUnit(int officepageUnit) {
		this.officepageUnit = officepageUnit;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstIndex() {
		return firstIndex;
	}
	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}
	public int getLastIndex() {
		return lastIndex;
	}
	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchKeywordFrom() {
		return searchKeywordFrom;
	}
	public void setSearchKeywordFrom(String searchKeywordFrom) {
		this.searchKeywordFrom = searchKeywordFrom;
	}
	public String getSearchKeywordTo() {
		return searchKeywordTo;
	}
	public void setSearchKeywordTo(String searchKeywordTo) {
		this.searchKeywordTo = searchKeywordTo;
	}
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getIsContinueInsert() {
		return isContinueInsert;
	}
	public void setIsContinueInsert(String isContinueInsert) {
		this.isContinueInsert = isContinueInsert;
	}
	public String getOrderField() {
		return orderField;
	}
	public void setOrderField(String orderField) {
		this.orderField = orderField;
	}
	public String getOrderSort() {
		return orderSort;
	}
	public void setOrderSort(String orderSort) {
		this.orderSort = orderSort;
	}
	public String getMenuCd() {
		return menuCd;
	}
	public void setMenuCd(String menuCd) {
		this.menuCd = menuCd;
	}
	public String getCurrLang() {
		return currLang;
	}
	public void setCurrLang(String currLang) {
		this.currLang = currLang;
	}
	public String getErpIntergate() {
		return erpIntergate;
	}
	public void setErpIntergate(String erpIntergate) {
		this.erpIntergate = erpIntergate;
	}
	public String getErpUserName() {
		return erpUserName;
	}
	public void setErpUserName(String erpUserName) {
		this.erpUserName = erpUserName;
	}
	public String getErpCompany() {
		return erpCompany;
	}
	public void setErpCompany(String erpCompany) {
		this.erpCompany = erpCompany;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Date getCrtDt() {
		return crtDt;
	}
	public void setCrtDt(Date crtDt) {
		this.crtDt = crtDt;
	}
	public String getCrtBy() {
		return crtBy;
	}
	public void setCrtBy(String crtBy) {
		this.crtBy = crtBy;
	}
	public Date getModDt() {
		return modDt;
	}
	public void setModDt(Date modDt) {
		this.modDt = modDt;
	}
	public String getModBy() {
		return modBy;
	}
	public void setModBy(String modBy) {
		this.modBy = modBy;
	}
	public int getDelIf() {
		return delIf;
	}
	public void setDelIf(int delIf) {
		this.delIf = delIf;
	}
	public String getCurrYear() {
		return currYear;
	}
	public void setCurrYear(String currYear) {
		this.currYear = currYear;
	}
	
}
