package com.sms.common.utils;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Command {
	
	public static String getClientIpAddr(HttpServletRequest request) {
		
		String ip = request.getHeader("X-Forwarded-For");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	/**
	 * Returns a psuedo-random number between min and max, inclusive. The
	 * difference between min and max can be at most
	 * <code>Integer.MAX_VALUE - 1</code>.
	 *
	 * @param min
	 *            Minimim value
	 * @param max
	 *            Maximim value. Must be greater than min.
	 * @return Integer between min and max, inclusive.
	 * @see java.util.Random#nextInt(int)
	 */
	public static int randInt(int min, int max) {
		// Usually this can be a field rather than a method variable
		Random rand = new Random();

		// nextInt is normally exclusive of the top value,
		// so add 1 to make it inclusive
		int randomNum = rand.nextInt((max - min) + 1) + min;
		return randomNum;
	}

	public static void alert(String message, HttpServletResponse response) throws Exception {
		alert(message, response, "");
	}

	public static void alert(String message, HttpServletResponse response, String script) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print("<script>alert('" + message + "');" + script + "</script>");
	}

	public static boolean isNumber(String str) {
		for (int i = 0; i < str.length(); i++) {
			// If we find a non-digit character we return false.
			if (!Character.isDigit(str.charAt(i)))
				return false;
		}
		return true;
	}

	public static String GetSystemTime(String strDateFormat) {
		if (strDateFormat.equals(""))
			strDateFormat = "yyyy-MM-ddd HH:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
		Calendar calendar1 = Calendar.getInstance();
		String string1 = sdf.format(calendar1.getTime());
		return string1;
	}

	public static String GetDateValue(Date dateValue, String strDateFormat) {
		if (strDateFormat.equals(""))
			strDateFormat = "yyyy-MM-ddd HH:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
		String string1 = sdf.format(dateValue);
		return string1;
	}

	public static String getUserLogined(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("CurrLoginInfo_UserName");
		if (userName == null)
			userName = "";
		userName = String.valueOf(userName).trim();
		return userName;
	}

	public static String getUserObjLogined(HttpServletRequest request, HttpServletResponse response, String arg_Part) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = String.valueOf(session.getAttribute("CurrLoginInfo_" + arg_Part));
		if (userName == null)
			userName = "";
		userName = String.valueOf(userName).trim();
		return userName;
	}

	public static String generateKey() {
		DecimalFormat decimalFormat = new DecimalFormat("00");
		return String.valueOf(System.currentTimeMillis()) + decimalFormat.format(Math.random() * 99.0D);
	}

	public static String generateKey(int seq) {
		DecimalFormat decimalFormat = new DecimalFormat("00");
		return String.valueOf(System.currentTimeMillis()) + decimalFormat.format(seq);
	}

	public static String getExtension(String extension) {
		String extensionType = "";
		try {
			int extensionIndex = extension.trim().indexOf(".");
			int extensionIndexs = extension.trim().lastIndexOf(".");
			if (extensionIndex > 0)
				extensionType = extension.substring(extensionIndexs, extension.length());
		} catch (Exception e) {
			extensionType = ".CommonUtil.Error";
		}
		return extensionType.toLowerCase();
	}

	public static String getPagingStr(int arg_TotalRow, int arg_CurrPage, int arg_RowPerPage, String arg_TableName) {
		int totalPage = arg_TotalRow / arg_RowPerPage;
		if (arg_TotalRow % arg_RowPerPage > 0)
			totalPage = totalPage + 1;
		int maxBlock = 10;
		boolean isShowBtnPrv = false;
		boolean isShowBtnNxt = false;
		if (arg_CurrPage > maxBlock)
			isShowBtnPrv = true;
		if (totalPage - arg_CurrPage > maxBlock)
			isShowBtnNxt = true;

		int currBlock = arg_CurrPage / maxBlock;
		if (arg_CurrPage % maxBlock > 0)
			currBlock = currBlock + 1;
		int startPage = ((currBlock - 1) * maxBlock) + 1;
		int endPage = currBlock * maxBlock;
		if (endPage > totalPage)
			endPage = totalPage;

		String strRs = ""
				+ "		  <div class='row'>"
				+ "			<div class='col-sm-6'>"
				+ "				<div class='dataTables_info' id='"
				+ arg_TableName
				+ "_info' role='alert' aria-live='polite' aria-relevant='all'>"
				+ "    				Showing "
				+ (((arg_CurrPage - 1) * arg_RowPerPage) + 1)
				+ " to "
				+ ((arg_CurrPage * arg_RowPerPage > arg_TotalRow) ? arg_TotalRow : arg_CurrPage * arg_RowPerPage)
				+ " of "
				+ arg_TotalRow
				+ " entries"
				+ "				</div>"
				+ "			</div>"
				+ "			<div class='col-sm-6'>"
				+ "    			<div class='dataTables_paginate paging_simple_numbers' id='"
				+ arg_TableName + "_paginate'>"
				+ "					<ul class='pagination'>";
		if (isShowBtnPrv) {
			strRs += "						<li class='paginate_button previous disabled' aria-controls='"
					+ arg_TableName
					+ "' tabindex='0' id='"
					+ arg_TableName
					+ "_previous'>"
					+ "							<a  onclick='onPageMove("
					+ arg_RowPerPage
					+ ","
					+ (startPage - 1)
					+ "); return false;' href='"
					+ (startPage - 1)
					+ "'>Previous</a>" + "						</li>";
		}
		for (int i = startPage; i <= endPage; i++) {
			if (arg_CurrPage == i) {
				strRs += "						<li class='paginate_button active' aria-controls='"
						+ arg_TableName + "' tabindex='0'>";
			} else {
				strRs += "						<li class='paginate_button' aria-controls='"
						+ arg_TableName + "' tabindex='0' >";
			}
			strRs += "    						<a onclick='onPageMove(" + arg_RowPerPage + ","
					+ i + "); return false;' href='" + i + "'>" + i + "</a>"
					+ "  					</li>";
		}
		if (isShowBtnNxt) {
			strRs += "						<li class='paginate_button next' aria-controls='"
					+ arg_TableName + "' tabindex='0' id='" + arg_TableName
					+ "_next'>" + "							<a  onclick='onPageMove("
					+ arg_RowPerPage + "," + (endPage + 1)
					+ "); return false;' href='" + (endPage + 1) + "'>Next</a>"
					+ "						</li>";
		}
		strRs += "				</ul>" + "			</div>" + "		</div>" + "	</div>";
		return strRs;
	}

	@SuppressWarnings("deprecation")
	public static String getReportFolderPath(HttpServletRequest request) {
		return request.getRealPath("/") + File.separatorChar + "report" + File.separatorChar;
	}

	@SuppressWarnings("deprecation")
	public static String getAttachedFileFolderPath(HttpServletRequest request) {
		return request.getRealPath("/") + File.separatorChar + "UploadFolder"
				+ File.separatorChar + "Attach_File" + File.separatorChar;
	}

	@SuppressWarnings("deprecation")
	public static String getAvartaFileFolderPath(HttpServletRequest request) {
		return request.getRealPath("/") + File.separatorChar + "UploadFolder"
				+ File.separatorChar + "Avartar" + File.separatorChar;
	}

	// ngoc phuc report
	public static String getReportFolderPath1(HttpServletRequest request) {
		return request.getRealPath("/") + File.separatorChar + "WEB-INF"
				+ File.separatorChar + "jsp" + File.separatorChar + "sms"
				+ File.separatorChar + "reports" + File.separatorChar;
	}

	public static String getSampleReportFolderPath(HttpServletRequest request) {
		return request.getRealPath("/") + File.separatorChar + "WEB-INF"
				+ File.separatorChar + "jsp" + File.separatorChar + "sms"
				+ File.separatorChar + "ImportSample" + File.separatorChar;
	}
}
