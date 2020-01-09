package com.handong.tags;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class NumberFormatterTag extends SimpleTagSupport{
	private String format;
	private String number;
	
	public NumberFormatterTag() {}

	public void setFormat(String format) {
		this.format = format;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	@Override
	public void doTag() throws JspException, IOException{
		System.out.println("Number is:" + number); 
		System.out.println("Format is:" + format);
		
		double num = Double.parseDouble(number);
		DecimalFormat formatter = new DecimalFormat(format);
		String formattedNumber = formatter.format(num);
		getJspContext().getOut().write(formattedNumber);
	}
}
