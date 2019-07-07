package service;


import java.util.List;

import dao.UserDao;
import domain.User;
import service.UserService;
import utils.BeanFactory;

public class UserService{

	public void regist(User user) {
		//调用dao对数据库进行操作
		UserDao ud = (UserDao)BeanFactory.getBean("UserDao");
		ud.regist(user);
	}
	public List<User> findAll() throws Exception {
		UserDao ud = (UserDao)BeanFactory.getBean("UserDao");
		return ud.findAll();
	}
	
	
	public void delete(String id) {
		//调用dao对数据库进行操作
		UserDao ud = (UserDao)BeanFactory.getBean("UserDao");
		ud.delete(id);
	}

	public User getById(String id) throws Exception {
		//调用dao对数据库进行操作
		UserDao ud = (UserDao)BeanFactory.getBean("UserDao");
		return ud.getById(id);
	}
	public void update(User user) throws Exception {
		//调用dao对数据库进行操作
		UserDao ud = (UserDao)BeanFactory.getBean("UserDao");
		ud.update(user);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public User login(String username, String password) {
		UserDao ud = (UserDao)BeanFactory.getBean("UserDao");
		return ud.login(username,password);
	}
	
}
