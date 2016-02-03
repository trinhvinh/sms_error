package com.sms.vo;

import java.util.Date;

/**
 * @author MACBOOK
 * Jan 26, 2016 5:09:58 PM
 */
public class AttachFileVo {
	
	private long pk;
	private long tablePk;
	private String tableName;
	private long revisionFile;
	private String fileName;
	private String fileMask;
	private int fileSize;
	private String fileType;
	private String remarks;
	private Date crtDt;
	private String crtBy;
	private Date modDt;
	private String modBy;
	private long delIf;
	private String actStr;
	
	public AttachFileVo() {
		super();
	}	
	public AttachFileVo(long pk) {
		super();
		this.pk = pk;
	}	
	public long getPk() {
		return pk;
	}
	public void setPk(long pk) {
		this.pk = pk;
	}
	public long getTablePk() {
		return tablePk;
	}
	public void setTablePk(long tablePk) {
		this.tablePk = tablePk;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public long getRevisionFile() {
		return revisionFile;
	}
	public void setRevisionFile(long revisionFile) {
		this.revisionFile = revisionFile;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileMask() {
		return fileMask;
	}
	public void setFileMask(String fileMask) {
		this.fileMask = fileMask;
	}
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
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
	public long getDelIf() {
		return delIf;
	}
	public void setDelIf(long delIf) {
		this.delIf = delIf;
	}
	public String getActStr() {
		return actStr;
	}
	public void setActStr(String actStr) {
		this.actStr = actStr;
	}
	
}
