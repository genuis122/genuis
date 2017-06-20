package com.chinasoft.myweb.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.myweb.jopo.User;
import com.chinasoft.myweb.jopo.UserException;
import com.chinasoft.myweb.mapper.UserMapper;
import com.chinasoft.myweb.service.UserService;
import com.chinasoft.myweb.util.EmailUtils;

@Service
public class UserServiceImpl implements UserService{
	Date date=new Date();
	@Autowired
	private UserMapper userMapper;
	//添加用户
	public void addUser(User user) {
		userMapper.addUser(user);
		System.out.println(user+"service+++++++++++++++");
		EmailUtils.sendMail(user.getEmail(), user.getToken());
	}
	//������֤�����token��ѯ�û�
	public User findByToken(String token) throws UserException {
		
		User user=userMapper.findByToken(token);
		long testTime=date.getTime()-user.getUserdate().getTime();
		if(user!=null&&testTime<1000*60*60*3){
			user.setState(1);
			userMapper.update(user);
			return user;
		}else{
			userMapper.deleteById(user.getId());
			throw new UserException("激活失败，激活时间过长");
	}
	}
	//根据身份证查找，确保一张身份证只能注册一个用户
	public void findByCard(String card) throws UserException {
		User user=userMapper.findByCard(card);
		if(user!=null){
			throw new UserException("身份证已被注册。");
		}
	}
	//根据用户名查找
	public void findByName(String uname) throws Exception {
		User user=userMapper.findByName(uname);
		if(user!=null){
			throw new UserException("用户名已存在");
		}
	}
	//登录，查询用户
	public User findByUser(String uname, String password) throws Exception {
		User user=userMapper.findByName(uname);
		if(user==null){
			throw new UserException("用户名不存在");
		}else if(!user.getUname().equals(uname)||!user.getPassword().equals(password)){
			throw new UserException("用户名或密码错误");
		}
		return user;
	}
}
