package com.chinasoft.myweb.jopo;

import java.util.Date;

public class User {
	private String id;//id
	private String uname;//用户名
	private String password;//密码
	private String email;//邮箱
	private String name;//姓名（身份证名字）
	private String card;//身份证号码
	private String address;//联系地址
	private String phone;//电话号码
	private int rols;//管理状态（1.商家，2.买家，3.超级管理员）
	private String token;//验证；
	private Date userdate;//注册时间
	private int state;//状态（1.激活    0.未激活）
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getRols() {
		return rols;
	}
	public void setRols(int rols) {
		this.rols = rols;
	}
	public Date getUserdate() {
		return userdate;
	}
	public void setUserdate(Date userdate) {
		this.userdate = userdate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", password=" + password
				+ ", email=" + email + ", name=" + name + ", card=" + card
				+ ", address=" + address + ", phone=" + phone + ", rols="
				+ rols + ", token=" + token + ", userdate=" + userdate
				+ ", state=" + state + "]";
	}
	
}
