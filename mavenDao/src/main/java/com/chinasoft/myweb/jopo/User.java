package com.chinasoft.myweb.jopo;

import java.util.Date;

public class User {
	private String id;//id
	private String uname;//�û���
	private String password;//����
	private String email;//����
	private String name;//���������֤���֣�
	private String card;//���֤����
	private String address;//��ϵ��ַ
	private String phone;//�绰����
	private int rols;//����״̬��1.�̼ң�2.��ң�3.��������Ա��
	private String token;//��֤��
	private Date userdate;//ע��ʱ��
	private int state;//״̬��1.����    0.δ���
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
