package com.chinasoft.myweb.mapper;

import com.chinasoft.myweb.jopo.User;

public interface UserMapper {
	//添加用户
	void addUser(User user);
	//更新用户
	void update(User user);
	//删除用户
	void deleteById(String id);
	//根据token查询
	User findByToken(String token);
	//根据身份号码查询
	User findByCard(String card);
	//根据用户名查询，用户名不重复
	User findByName(String uname);
}
