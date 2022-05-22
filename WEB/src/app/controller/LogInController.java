package app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import app.dao.AccountDAO;

@Controller
@RequestMapping("/login")
public class LogInController {
	@RequestMapping()
	public String showLoginForm(HttpServletRequest request){
		return "login";
	}
	@RequestMapping(params = "btnSubmit")
	public String checkLogin(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		AccountDAO dao = new AccountDAO();
		int role = dao.checkLogin(username, password);
		if(role != -1){
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("password", password);
			request.getSession().setAttribute("role", role);
			httpServletResponse.sendRedirect("home.htm");
			return "home";
		} 
		request.getSession().setAttribute("msg", "Sai thông tin đăng nhập!");
		return "login";
	}
}

