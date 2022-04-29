package app.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import app.context.DBContext;
import app.dao.AccountDAO;

@Controller
public class LogInController {
	@RequestMapping("")
	public String showLoginForm(){
		return "login";
	}
	
	@RequestMapping("/home")
	public String logIn(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws IOException{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		model.addAttribute("msg", "");
		AccountDAO dao = new AccountDAO();
		if(dao.checkLogin(username, password)){
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			return "home";
		}
		request.setAttribute("msg", "wrong!");
		httpServletResponse.sendRedirect("");
		return "login";
	}
}

