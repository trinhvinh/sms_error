/**
 * 
 */
package com.sms.common.utils;

/**
 * @author MACBOOK
 *
 */
public class Json {

	public static String SUCCESS = "{\"status\":\"success\",\"statusText\":\"\"}";
	public static String FAILURE = "{\"status\":\"error\",\"statusText\":\"\"}";
	public static String SESSION_EXPIRE = "{\"status\":\"session_expire\",\"statusText\":\"\"}";

	public static String getSessionExpire() {
		String msg = "Your session is expired! please login again!";
		String lhref = "/login.jsp";
		return "{\"status\":\"session_expire\",\"statusText\":\"" + msg + "\",\"lhref\":\"" + lhref + "\"}";
	}

	public static String getSessionExpire(String msg) {
		if ("".equals(msg)) {
			return Json.SESSION_EXPIRE;
		} else {
			String lhref = "/login.jsp";
			return "{\"status\":\"session_expire\",\"statusText\":\"" + msg + "\",\"lhref\":\"" + lhref + "\"}";
		}
	}
}
