package com.chinasoft.myweb.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.ejb.Remove;
import javax.imageio.ImageIO;
import javax.jms.Session;
import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Dispatch;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chinasoft.myweb.jopo.User;
import com.chinasoft.myweb.service.UserService;
import com.chinasoft.myweb.util.ImageUtil;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	//跳转首页
	@RequestMapping(value="index")
	public String index(){
		return "index";
	}
	//跳转注册页面
	@RequestMapping("register")
	public String register(){
		return "register";
	}
	//跳转登录页面
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	//退出
	@RequestMapping("exit")
	public String exit(){
		return "index";
	}
	//跳转个人中心
	@RequestMapping("userIndex")
	public String userIndex(){
		return "user/index";
	}
	//跳转menu_search.jsp
	@RequestMapping("search")
	public String search(){
		return "menu_search";
	}
	//店铺管理中心
	@RequestMapping("store")
	public String store(){
		return "";
		
	}
	//跳转到订餐中心
	@RequestMapping("cart")
	public String card(){
		return "cart";
		}
	@RequestMapping(value="addUser", method=RequestMethod.POST)
	public String addUser(Model model,User user,HttpServletRequest request,String verifycode
){
		String text=(String)request.getSession().getAttribute("text");
		String text1=text.toUpperCase();
		String text2=verifycode.toUpperCase();
		if(text2.equals(text1)){
			String password=user.getPassword();
			String password1=DigestUtils.md5Hex(password);
			user.setPassword(password1);
			user.setId(UUID.randomUUID().toString().replace("-",""));
			user.setToken(user.getId());
			user.setUserdate(new Date());
			userService.addUser(user);
		return "batis";
		}else {
			model.addAttribute("user", user);
			model.addAttribute("text1", "验证码错误，请重新输入");
			return "register";
		}
	}
	@RequestMapping("activate")
	public String activate(Model model,String token){
		try {
			System.out.println("----------------------------------");
			User user=userService.findByToken(token);
			model.addAttribute("getLogin", user.getUname());
			return "MyJsp";
		} catch (Exception e) {
			String message=e.getMessage();
			model.addAttribute("message", message);
			return "register";
		}
	}
	//验证码
	@RequestMapping("verificationCode/{re}")
	public void image(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		ImageUtil vu = new ImageUtil();
		BufferedImage image = vu.getImg();
		String text = vu.getAs().toString();
		req.getSession().setAttribute("text", text);
		ImageIO.write(image, "JPG", resp.getOutputStream());
	}
	@RequestMapping("findByCard")
	public String findByCard(HttpServletResponse response,String card) throws IOException{
		 try {
			userService.findByCard(card);
			return "register";
		} catch (Exception e) {
			response.getWriter().print("1");
			response.getWriter().flush();
			response.getWriter().close();
			return "register";
		}
		}
	@RequestMapping("findByName")
	public String findByName(HttpServletResponse response,String uname) throws IOException{
		try {
			userService.findByName(uname);
			return "register";
		} catch (Exception e) {
			response.getWriter().print("1");
			response.getWriter().flush();
			response.getWriter().close();
			return "register";
		}	
	}
	@RequestMapping(value="loginByUser",method=RequestMethod.POST)
	public String findByUser(String uname,String password,String verifycode,Model model,
							HttpServletRequest request){
		String password1=DigestUtils.md5Hex(password);
		System.out.println(password1);
		try {
			String text=(String)request.getSession().getAttribute("text");
			if(text.toUpperCase().equals(verifycode.toUpperCase())){
				User user=userService.findByUser(uname,password1);
				request.getSession().setAttribute("user", user);
				return "index";
			}else{
				model.addAttribute("massge", "验证码错误，请重新输入");
				model.addAttribute("password", password);
				model.addAttribute("uname", uname);
				return "login";
			}
			
		} catch (Exception e) {
			model.addAttribute("maeeges", e.getMessage());
			return "login";
		}
		
	}
}
