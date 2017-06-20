package com.chinasoft.myweb.service;
import com.chinasoft.myweb.jopo.PageBean;

public interface OrderService {

	PageBean findAll(PageBean pageBean, String uid);

}
