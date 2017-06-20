package com.chinasoft.myweb.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chinasoft.myweb.jopo.PageBean;
import com.chinasoft.myweb.service.OrderService;
@Controller
public class OrderContriller {
	@Autowired
	OrderService orderService;
	//转发到订单view页面
	@RequestMapping("orderview")
	public String order_view(){
		return "user/order_view";
	}
	//分页查询
	@RequestMapping("order_list")
	public String order_list(Model model,String pageCode,String uid){
		PageBean pageBean=new PageBean();
		pageBean.setPageSize(20);
		pageBean.setPageCode(getpageCode(pageCode));
		PageBean orderAll=orderService.findAll(pageBean,uid);
		model.addAttribute("pageBean", orderAll);
		return "user/order_list";
	}
	@RequestMapping("order_view")
	public String order(){
		
		return "user/order_view";	
	}
	public int getpageCode(String pageCode){
		if(pageCode==null||pageCode.equals("0")||pageCode.equals("")){
			return 1;
		}else {
			return Integer.parseInt(pageCode);
		}
		
	}
}
