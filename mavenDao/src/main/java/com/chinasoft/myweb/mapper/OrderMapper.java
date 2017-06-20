package com.chinasoft.myweb.mapper;

import java.util.List;

import com.chinasoft.myweb.jopo.Order;
import com.chinasoft.myweb.jopo.PageBean;

public interface OrderMapper {
	//查询总条数
	Number findTotal(PageBean pageBean);
	//查询当前页到底几条
	List<Order> findAll(PageBean pageBean);


}
