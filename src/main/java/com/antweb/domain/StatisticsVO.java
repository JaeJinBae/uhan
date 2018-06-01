package com.antweb.domain;

import java.util.Date;

public class StatisticsVO {
	int sno;
	String browser;
	String os;
	Date connectdate;
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getBrowser() {
		return browser;
	}
	public void setBrowser(String browser) {
		this.browser = browser;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public Date getConnectdate() {
		return connectdate;
	}
	public void setConnectdate(Date connectdate) {
		this.connectdate = connectdate;
	}
	
	public StatisticsVO(int sno, String browser, String os, Date connectdate) {
		super();
		this.sno = sno;
		this.browser = browser;
		this.os = os;
		this.connectdate = connectdate;
	}
	public StatisticsVO() {
		super();
	}
	@Override
	public String toString() {
		return String.format("StatisticsVO [sno=%s, browser=%s, os=%s, connectdate=%s]", sno, browser, os, connectdate);
	}
	
	
}
