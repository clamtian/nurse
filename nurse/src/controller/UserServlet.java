package controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import myconventer.MyConventer;
import domain.User;
import service.UserService;
import utils.BeanFactory;
import utils.UUIDUtils;

/*
 * 跟用户相关的servlet
 */
public class UserServlet extends HttpServlet{
	private static String id = null;
	
	public void service(HttpServletRequest request,HttpServletResponse response){
		UserServlet u = new UserServlet();
		String method = request.getParameter("method");
		try {
			if(method.equals("regist")){
				request.getRequestDispatcher(u.regist(request, response)).forward(request, response);
			}else if(method.equals("findAll")){
				request.getRequestDispatcher(u.findAll(request, response)).forward(request, response);
			}else if(method.equals("delete")){
				request.getRequestDispatcher(u.delete(request, response)).forward(request, response);
			}else if(method.equals("edit")){
				request.getRequestDispatcher(u.edit(request, response)).forward(request, response);
			}else if(method.equals("editUI")){
				request.getRequestDispatcher(u.editUI(request, response)).forward(request, response);
			}else if(method.equals("findById")){
				request.getRequestDispatcher(u.findById(request, response)).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String findById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");

		UserService us = (UserService)BeanFactory.getBean("UserService");
		User user = us.getById(id);

		request.setAttribute("user", user);
		return "/customer/patient_info.jsp";
	}
	public String editUI(HttpServletRequest request,HttpServletResponse response) throws Exception {
		this.id = request.getParameter("id");
		System.out.println(id);
		UserService us = (UserService)BeanFactory.getBean("UserService");
		User user = us.getById(this.id);
		request.setAttribute("user", user);
		return "/customer/edit.jsp";
		
	}
	public String edit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		//封装数据
		User user = new User();
		user.setId(this.id);
		ConvertUtils.register(new MyConventer(), Date.class);
		BeanUtils.populate(user, request.getParameterMap());
		System.out.println(user);
		
		UserService us = (UserService)BeanFactory.getBean("UserService");
		us.update(user);
		request.setAttribute("msg", "更新");
		return "/jsp/msg.jsp";
	}
	public String regist(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		//封装数据
		User user = new User();
		user.setId(UUIDUtils.getId());
		ConvertUtils.register(new MyConventer(), Date.class);
		BeanUtils.populate(user, request.getParameterMap());
		System.out.println(user);
		//调用service完成注册
		UserService us = (UserService)BeanFactory.getBean("UserService");
		us.regist(user);
		request.setAttribute("msg", "添加");
		return "/jsp/msg.jsp";
	}
	
	public String findAll(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		UserService us = (UserService)BeanFactory.getBean("UserService");
		List<User> list = us.findAll();

		request.setAttribute("list", list);
		return "/customer/list.jsp";
	}
	public String delete(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		String id = request.getParameter("id");
		UserService us = (UserService)BeanFactory.getBean("UserService");
		us.delete(id);
		request.setAttribute("msg", "刪除");
		return "/jsp/msg.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//用户登录
	public String login(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//获取数据
		String username = request.getParameter("username");
		String idcard = request.getParameter("idcard");
		//调用service完成登录
		UserService us = (UserService)BeanFactory.getBean("UserService");
		User user = us.login(username,idcard);
		//判断用户是否存在
		if(user == null){
			request.setAttribute("msg","用户名密码错误");
			return "/jsp/login.jsp";
		}
		request.getSession().setAttribute("user",user);
		response.sendRedirect(request.getContextPath() + "/jsp/index.jsp");
		return null;
	}
	public String logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath() + "/");
		return null;
	}
	
	public String registerUI(HttpServletRequest request,HttpServletResponse response) {
		return "/jsp/register.jsp";
	}
	public String loginUI(HttpServletRequest request,HttpServletResponse response) {
		return "/jsp/login.jsp";
	}
}
