package app;

import java.util.Map;
import groovy.text.markup.MarkupTemplateEngine;

@SuppressWarnings("serial")
public class ActionSupport extends org.metamorphosis.core.ActionSupport {
	
	public void sendSupportMail(String object,String content) throws Exception{
		sendMail("ThinkTech Support <support@thinktech.sn>",object,content);
	}
	
	@SuppressWarnings("rawtypes")
	public String parseTemplate(String template, Map map) throws Exception {
		return new MarkupTemplateEngine().createTemplate(readFile("templates/"+template+".groovy")).make(map).toString();
	}
	
	public String getAppURL() {
		return getBaseUrl();
	}
	
	public String getCrmURL() {
		return "https://thinktech-crm.herokuapp.com";
	}

}