package com.chinasoft.myweb.jopo;

import java.util.List;

public class PageBean {
	private int pageSize;//每页显示条数
	private int pageCode;//当前页
	private int pageTotal;//总条数
	private List<Order> orderList;//订单集合
	private String uid;//用户id	
	private int pageBegin;//从第几条开始查询
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	//总页数
	public int getpageNumber(){
		int pageNumber=this.pageTotal/this.pageSize;
		if(this.pageTotal%this.pageSize!=0){
			return (pageNumber+1);
		}
		return pageNumber;
		
	}
	//从第几条开始

	public int getPageSize() {
		return pageSize;
	}
	public int getPageBegin() {
		return (this.pageCode-1)*this.pageSize;
	}
	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCode() {
		return pageCode;
	}
	public void setPageCode(int pageCode) {
		this.pageCode = pageCode;
	}
	public int getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}
	public List<Order> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}
	
}
