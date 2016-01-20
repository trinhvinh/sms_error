/**
 * 
 */
package com.sms.common.utils;

import java.util.Enumeration;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.util.ObjectUtils;

/**
 * @author MACBOOK
 *
 */
public class DecryptPropertyConfigurer extends PropertyPlaceholderConfigurer {
	
	private static Logger LOGGER = Logger.getLogger(DecryptPropertyConfigurer.class);

	@Override
	protected void convertProperties(Properties props) {		
		@SuppressWarnings("rawtypes")
		Enumeration propertyNames = props.propertyNames();
		while (propertyNames.hasMoreElements()) {
			String propertyName = (String) propertyNames.nextElement();
			String propertyValue = props.getProperty(propertyName);
			String convertedValue = null;
			try {
				// convertedValue = Base64Util.decode(propertyValue);
			} catch (Exception e) {
				LOGGER.error("Error while decoding the value[" + propertyValue + "]", e);
			}
			if (!ObjectUtils.nullSafeEquals(propertyValue, convertedValue)) {
				props.setProperty(propertyName, convertedValue);
			}
		}
	}
}
