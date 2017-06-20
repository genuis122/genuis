package com.chinasoft.myweb.jopo;

import java.util.Date;
import java.util.List;

public class Order {
	private String id;
	private String orderID;//订单编号
	private int number;//商品数量
	private Date orderTime;//下单时间
	private String mode;//配送方式
	private String state;//配送状态
	private int price;//商品总金额
	private String uid;
	private Orderdetail orderdetail;//订单详情
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Orderdetail getOrderdetail() {
		return orderdetail;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public void setOrderdetail(Orderdetail orderdetail) {
		this.orderdetail = orderdetail;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", orderID=" + orderID + ", number="
				+ number + ", orderTime=" + orderTime + ", uid=" + uid + "]";
	}
	
}
