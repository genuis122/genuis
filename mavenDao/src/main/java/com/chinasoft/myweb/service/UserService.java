package com.chinasoft.myweb.service;

import com.chinasoft.myweb.jopo.User;
import com.chinasoft.myweb.jopo.UserException;
public interface UserService {

	void addUser(User user);

	User findByToken(String token) throws Exception;

	void findByCard(String card) throws Exception;

	void findByName(String uname) throws Exception;

	User findByUser(String uname, String password) throws Exception;

}
