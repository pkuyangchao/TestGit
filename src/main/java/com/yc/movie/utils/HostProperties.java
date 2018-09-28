package com.yc.movie.utils;

public class HostProperties {

	private String hostName; //本机用户名
	
	private String computerName; //计算机名
	
	private String computerDomain; //计算机域名
	
	private String userdir;   //本文件所在文件夹
	
	private String osName;  //服务器操作系统
	
	private String osDate; //服务器当前时间
	
	private Integer cpuCount;  //cpu总数
	
	private String cpuSysUsed;  //cpu系统使用率
	
	private String cpuType;		//cpu类型
	
	private String sessionId; //当前sessionId
	
	private String memTotal;  //当前内存总量
	
	private String memUsed;  //当前内存使用量
	
	
	public String getCpuType() {
		return cpuType;
	}

	public void setCpuType(String cpuType) {
		this.cpuType = cpuType;
	}

	public String getCpuSysUsed() {
		return cpuSysUsed;
	}

	public void setCpuSysUsed(String cpuSysUsed) {
		this.cpuSysUsed = cpuSysUsed;
	}



	public String getMemTotal() {
		return memTotal;
	}



	public void setMemTotal(String memTotal) {
		this.memTotal = memTotal;
	}



	public String getMemUsed() {
		return memUsed;
	}



	public void setMemUsed(String memUsed) {
		this.memUsed = memUsed;
	}



	public String getHostName() {
		return hostName;
	}



	public void setHostName(String hostName) {
		this.hostName = hostName;
	}



	public String getComputerName() {
		return computerName;
	}



	public void setComputerName(String computerName) {
		this.computerName = computerName;
	}



	public String getComputerDomain() {
		return computerDomain;
	}



	public void setComputerDomain(String computerDomain) {
		this.computerDomain = computerDomain;
	}



	public String getUserdir() {
		return userdir;
	}



	public void setUserdir(String userdir) {
		this.userdir = userdir;
	}



	public String getOsName() {
		return osName;
	}



	public void setOsName(String osName) {
		this.osName = osName;
	}



	public String getOsDate() {
		return osDate;
	}



	public void setOsDate(String osDate) {
		this.osDate = osDate;
	}



	public Integer getCpuCount() {
		return cpuCount;
	}



	public void setCpuCount(Integer cpuCount) {
		this.cpuCount = cpuCount;
	}



	public String getSessionId() {
		return sessionId;
	}



	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}



	public String getHostLanguage() {
		return hostLanguage;
	}



	public void setHostLanguage(String hostLanguage) {
		this.hostLanguage = hostLanguage;
	}



	private String hostLanguage;  //服务器语言种类
}
