package app.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogOutController {
	@RequestMapping("/logout")
	public String logOut(HttpServletRequest request, HttpServletResponse httpServletResponse) throws IOException{
		request.getSession().setAttribute("username", "");
		request.getSession().setAttribute("password", "");
		request.getSession().setAttribute("role", "");
		request.getSession().setAttribute("msg", "");
		httpServletResponse.sendRedirect("login.htm");
		return "login";
	}
}
