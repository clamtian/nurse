package controller;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * servlet的父类 重写了service方法
 */
public class BaseServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			// 获取method=后请求的方法
			String method = request.getParameter("method");
			if (method == null) {
				method = "index";
			}
			// 获取子类的时运行类
			Class clazz = this.getClass();
			Method m = clazz.getMethod(method, HttpServletRequest.class, HttpServletResponse.class);
			String s = (String) m.invoke(this, request, response);
			// 判断s是否为空
			if (s != null) {
				request.getRequestDispatcher(s).forward(request, response);
			}  
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String index(HttpServletRequest request, HttpServletResponse response)
			throws Exception{
		return null;
	}

}
