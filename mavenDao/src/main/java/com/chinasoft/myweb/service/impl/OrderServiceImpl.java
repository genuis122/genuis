package com.chinasoft.myweb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.myweb.jopo.Order;
import com.chinasoft.myweb.jopo.PageBean;
import com.chinasoft.myweb.mapper.OrderMapper;
import com.chinasoft.myweb.mapper.UserMapper;
import com.chinasoft.myweb.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderMapper orderMapper;

	public PageBean findAll(PageBean pageBean,String uid) {
		pageBean.setUid(uid);
		System.out.println(pageBean.getPageBegin()+"++++++++");
		Number total=orderMapper.findTotal(pageBean);
		int pageTotal=total.intValue();
		pageBean.setPageTotal(pageTotal);
		List<Order>orderList=orderMapper.findAll(pageBean);
		pageBean.setOrderList(orderList);
		return pageBean;
	}
}
