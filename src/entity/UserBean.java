package entity;

import java.util.Date;

public class UserBean {
	private String name;
	private String pwd;
	private String sex;
	private String xli;
	private Date registertime;
	private String information;
	public UserBean(){}
	
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public Date getRegistertime() {
		return registertime;
	}
	public void setRegistertime(Date registertime) {
		this.registertime = registertime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getXli() {
		return xli;
	}
	public void setXli(String xli) {
		this.xli = xli;
	}
}
