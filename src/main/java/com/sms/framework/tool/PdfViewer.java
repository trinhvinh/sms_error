package com.sms.framework.tool;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfStamperView;

/**
 * @author MACBOOK Jan 22, 2016 2:30:04 AM
 */
public class PdfViewer extends AbstractPdfStamperView {

	protected void mergePdfDocument(Map<String, Object> model, com.lowagie.text.pdf.PdfStamper stamper,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		// stamper.

		// follow example code for filling out a form using iText:
		// http://itextpdf.com/examples/iia.php?id=122

		// AcroFields form = stamper.getAcroFields();
		// form.setField("fieldName", model.get("fieldName"));
	}

}
