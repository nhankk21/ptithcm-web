package app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import app.dao.ProductDAO;
import app.entity.Product;


@Controller
@RequestMapping("/home")
public class HomeController {
	@RequestMapping()
	public String home(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		ProductDAO productDAO = new ProductDAO();
		List<Product> list = productDAO.getTopProduct(16);
		request.setAttribute("listProduct", list);
		request.getSession().setAttribute("msg", "");
		return "home";	
	}
}
