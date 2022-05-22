package app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import app.dao.BillDAO;
import app.dao.ProductDAO;
import app.dao.UserDAO;
import app.entity.Product;
import app.entity.SelectedProduct;

@Controller
@RequestMapping("/sell")
public class SellController {
	private static List<SelectedProduct> listSelected = new ArrayList<>();
	@RequestMapping("")
	public String sellPage(HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		String cash = request.getParameter("cash");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		List<Product> list = new ProductDAO().getAllProcducts();
		
		request.setAttribute("list", list);
		request.setAttribute("cash", cash);
		request.setAttribute("address", address);
		request.setAttribute("phone", phone);
		request.setAttribute("selectedList", listSelected);
		return "sell";
	}
	
	@RequestMapping(params ="btnAddCart")
	public String addCart(HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		String cash = request.getParameter("add_cash");
		String address = request.getParameter("add_address");
		String phone = request.getParameter("add_phone");
		List<Product> list = new ProductDAO().getAllProcducts();
		request.setAttribute("list", list);
		request.setAttribute("add_cash", cash);
		request.setAttribute("add_address", address);
		request.setAttribute("add_phone", phone);
		
		String value = request.getParameter("selectProduct");
		String ID = value.split("@")[0];
		String name = value.split("@")[1];
		int quan = Integer.parseInt(request.getParameter("add_quantity"));
		listSelected.add(new SelectedProduct(ID,  quan, name));
		request.setAttribute("selectedList", listSelected);
		
		return "sell";
	}
	@RequestMapping(params ="btnOrder")
	public String order(HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		
		String username = (String) request.getSession().getAttribute("username");
		String cash = request.getParameter("add_cash");
		String address = request.getParameter("add_address");
		String phone = request.getParameter("add_phone");
		List<Product> list = new ProductDAO().getAllProcducts();
		int userID = new UserDAO().getUserID(username);
		int billID = new BillDAO().addBill(String.valueOf(userID), cash, address, phone);
		int res = -1;
		for(SelectedProduct i: listSelected){
			res = new BillDAO().addProductToBill(Integer.parseInt(i.getID()), i.getQuan(), billID);	
		}
		if(res != -1){
			request.setAttribute("add_cash", "");
			request.setAttribute("add_address", "");
			request.setAttribute("add_phone", "");
			listSelected.clear();
		}
		request.setAttribute("list", list);
		request.setAttribute("selectedList", listSelected);
		
		return "sell";
	}
	
}
