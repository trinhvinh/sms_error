/**
 * 
 */
package com.sms.common.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

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
	
	public static String getSuccess(String msg) {
		if("".equals(msg)) {
			return Json.SUCCESS;
		} else {
			return "{\"status\":\"success\",\"statusText\":\"" + msg + "\"}";
		}
	}
	
	public static String getFailure(String msg) {
		if("".equals(msg)) {
			return Json.FAILURE;			
		} else {
			return "{\"status\":\"error\",\"statusText\":\"" + msg + "\"}";
		}
	}
	
	public static String toJson(Object obj) {
        String s = castToJson(obj);
        if (s != null) {
            return s;
        } else {
            return toJson(getAttributes(obj));
        }
    }

    public static String toJson(String str) {
        Map<String, Object> map = parseStr(str);
        return Json.toJson(map);
    }

    public static String toJson(Map<String, Object> map) {
        String result = "";
        for (String name : map.keySet()) {
            Object value = map.get(name);
            String s = castToJson(value);
            if (s != null) {
                result += "\"" + name + "\":" + s + ",";
            } else if (value instanceof List<?>) {
                String v = toJson((List<?>) value);
                result += "\"" + name + "\":" + v + ",";
            } else if (value instanceof Object[]) {
                String v = toJson((Object[]) value);
                result += "\"" + name + "\":" + v + ",";
            } else if (value instanceof Map<?, ?>) {
                Map<String, Object> attr = castMap((Map<?, ?>) value);
                attr = removeListAttr(attr);
                result += "\"" + name + "\":" + Json.toJson(attr) + ",";
            } else if (value.getClass().getName().startsWith("java") == false) {
                Map<String, Object> attr = getAttributes(value);
                attr = removeListAttr(attr);
                result += "\"" + name + "\":" + Json.toJson(attr) + ",";
            } else {
                result += "\"" + name + "\":" + "\"" + value.toString() + "\",";
            }
        }
        if (result.length() == 0) {
            return "{}";
        } else {
            return "{" + result.substring(0, result.length() - 1) + "}";
        }
    }

    public static String toJson(Object[] aa) {
        if (aa.length == 0) {
            return "[]";
        } else {
            String result = "";
            for (Object obj : aa) {
                String s = castToJson(obj);
                if (s != null) {
                    result += s + ",";
                } else if (obj instanceof Map<?, ?>) {
                    Map<String, Object> map = castMap((Map<?, ?>) obj);
                    map = removeListAttr(map);
                    result += toJson(map) + ",";
                } else {
                    Map<String, Object> attr = getAttributes(obj);
                    attr = removeListAttr(attr);
                    result += toJson(attr) + ",";
                }
            }
            return "[" + result.substring(0, result.length() - 1) + "]";
        }
    }

    public static String toJson(List<?> ll) {
        return toJson(ll.toArray());
    }

    public static Map<String, Object> getAttributes(Object obj) {
        Class<?> c = obj.getClass();
        try {
            Method method = c.getMethod("isProxy");
            Boolean result = (Boolean) method.invoke(obj);
            if (result == true) {
                c = c.getSuperclass();
            }
        } catch (Exception e) {
        }
        Map<String, Object> attr = new HashMap<String, Object>();

        for (Field f : c.getFields()) {
            try {
                Object value = f.get(obj);
                attr.put(f.getName(), value);
            } catch (Exception e) {
            }
        }

        for (Method m : c.getDeclaredMethods()) {
            String mname = m.getName();
            if (mname.equals("getClass")) {
                continue;
            } else if (mname.startsWith("get")) {
                String pname = mname.substring(3);
                if (pname.length() == 1) {
                    pname = pname.toLowerCase();
                } else {
                    pname = pname.substring(0, 1).toLowerCase()
                            + pname.substring(1);
                }

                try {
                    Object value = m.invoke(obj);
                    attr.put(pname, value);
                } catch (Exception e) {
                }
            } else if (mname.startsWith("is")) {
                String pname = mname.substring(2);
                if (pname.length() == 1) {
                    pname = pname.toLowerCase();
                } else {
                    pname = pname.substring(0, 1).toLowerCase() + pname.substring(1);
                }

                try {
                    Object value = m.invoke(obj);
                    attr.put(pname, value);
                } catch (Exception e) {

                }
            }
        }
        if (c.getSuperclass() != null) {
            for (Method m : c.getSuperclass().getDeclaredMethods()) {
                String mname = m.getName();
                if (mname.equals("getClass")) {
                    continue;
                } else if (mname.startsWith("get")) {
                    String pname = mname.substring(3);
                    if (pname.length() == 1) {
                        pname = pname.toLowerCase();
                    } else {
                        pname = pname.substring(0, 1).toLowerCase() + pname.substring(1);
                    }

                    try {
                        Object value = m.invoke(obj);
                        attr.put(pname, value);
                    } catch (Exception e) {

                    }
                } else if (mname.startsWith("is")) {
                    String pname = mname.substring(2);
                    if (pname.length() == 1) {
                        pname = pname.toLowerCase();
                    } else {
                        pname = pname.substring(0, 1).toLowerCase()
                                + pname.substring(1);
                    }

                    try {
                        Object value = m.invoke(obj);
                        attr.put(pname, value);
                    } catch (Exception e) {

                    }
                }
            }
        }
        return attr;
    }

    public static String escape(String s) {
        if (s == null) {
            return null;
        }
        s = s.replaceAll("'", "\\\\'");
        StringBuffer sb = new StringBuffer();
        escape(s, sb);
        return sb.toString();
    }

    static void escape(String s, StringBuffer sb) {
        final int len = s.length();
        for (int i = 0; i < len; i++) {
            char ch = s.charAt(i);
            switch (ch) {
                case '"':
                    sb.append("\\\"");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                case '\b':
                    sb.append("\\b");
                    break;
                case '\f':
                    sb.append("\\f");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\r");
                    break;
                case '\t':
                    sb.append("\\t");
                    break;
                case '/':
                    sb.append("\\/");
                    break;
                default:
                    // Reference: http://www.unicode.org/versions/Unicode5.1.0/
                    if ((ch >= '\u0000' && ch <= '\u001F')
                            || (ch >= '\u007F' && ch <= '\u009F')
                            || (ch >= '\u2000' && ch <= '\u20FF')) {
                        String ss = Integer.toHexString(ch);
                        sb.append("\\u");
                        for (int k = 0; k < 4 - ss.length(); k++) {
                            sb.append('0');
                        }
                        sb.append(ss.toUpperCase());
                    } else {
                        sb.append(ch);
                    }
            }
        }// for
    }

    private static String castToJson(Object obj) {
        if (obj == null) {
            return "null";
        } else if (obj instanceof Boolean) {
            return obj.toString();
        } else if (obj instanceof Integer || obj instanceof Long
                || obj instanceof Float || obj instanceof Double
                || obj instanceof Short || obj instanceof java.math.BigInteger
                || obj instanceof java.math.BigDecimal) {
            return obj.toString();
        } else if (obj instanceof String) {
            String v = (String) obj;
            /*
             * v = v.replaceAll("\\\\", "\\\\\\\\"); v = v.replaceAll("\n",
             * "\\\\n"); v = v.replaceAll("\r", "\\\\r"); v = v.replaceAll("\"",
             * "\\\\\""); v = v.replaceAll("'", "\\\\\'");
             */

            return "\"" + escape(v) + "\"";
        } else if (obj instanceof java.sql.Date) {
            java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(
                    "yyyy-MM-dd");
            java.sql.Date v = (java.sql.Date) obj;
            String s = df.format(new java.util.Date(v.getTime()));
            return "\"" + s + "\"";
        } else if (obj instanceof java.sql.Timestamp) {
            java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(
                    "yyyy-MM-dd HH:mm:ss");
            java.sql.Timestamp v = (java.sql.Timestamp) obj;
            String s = df.format(new java.util.Date(v.getTime()));
            return "\"" + s + "\"";
        } else if (obj instanceof java.util.Date) {
            java.text.SimpleDateFormat df = new java.text.SimpleDateFormat(
                    "yyyy-MM-dd");
            java.util.Date v = (java.util.Date) obj;
            String s = df.format(v);
            return "\"" + s + "\"";
        } else {
            return null;
        }

    }

    public static Map<String, Object> castMap(Map<?, ?> map) {
        Map<String, Object> newMap = new HashMap<String, Object>();
        for (Object key : map.keySet()) {
            newMap.put(key.toString(), map.get(key));
        }
        return newMap;
    }

    private static Map<String, Object> removeListAttr(Map<String, Object> map) {
        Map<String, Object> newMap = new HashMap<String, Object>();
        for (Entry<String, Object> en : map.entrySet()) {
            if (!(en.getValue() instanceof List<?>)) {
                newMap.put((String) en.getKey(), en.getValue());
            }
        }
        return newMap;
    }

    private static Map<String, Object> parseStr(String str) {
        Map<String, Object> map = new HashMap<String, Object>();
        for (String strPart : str.split(",")) {
            String[] ss = strPart.split(":");
            if (ss == null || ss.length != 2) {
                continue;
            }
            String key = ss[0];
            String value = ss[1].trim();
            if (value.startsWith("'") && value.endsWith("'")) {
                map.put(key, value.substring(1, value.length() - 1));
            } else if (value.startsWith("\"") && value.endsWith("\"")) {
                map.put(key, value.substring(1, value.length() - 1));
            } else if (value.equals("true") || value.equals("false")) {
                map.put(key, Boolean.valueOf(value));
            } else if (value.indexOf(".") == -1) {
                try {
                    int val = Integer.parseInt(value);
                    map.put(key, val);
                } catch (Exception e) {
                    map.put(key, value);
                }
            } else {
                try {
                    BigDecimal val = new BigDecimal(value);
                    map.put(key, val);
                } catch (Exception e) {
                    map.put(key, value);
                }
            }
        }
        return map;
    }	
}
