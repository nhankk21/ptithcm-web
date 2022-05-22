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
@RequestMapping("/product")
public class ProductController {
	@RequestMapping("")
	public String product(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		List<Product> list = new ProductDAO().getAllProcducts();
		request.setAttribute("listAllProduct", list);
		return "product";
	}
	@RequestMapping("/edit")
	public String edit(HttpServletRequest request, HttpServletResponse httpServletResponse)throws Exception{
		String ID = request.getParameter("productID");
		Product product = new ProductDAO().getProductDetail(ID);
		request.setAttribute("product", product);
		return "product_edit";
	}
	@RequestMapping(value ="/edit", params = "btnCancel")
	public String cancel(HttpServletRequest request, HttpServletResponse httpServletResponse)throws Exception{
		httpServletResponse.sendRedirect("../product.htm");
		return "product";
	}
	@RequestMapping(value ="/edit", params = "btnSave")
	public String save(HttpServletRequest request, HttpServletResponse httpServletResponse)throws Exception{
		int ID = Integer.parseInt(request.getParameter("productID"));
		String name = request.getParameter("name");
		int quan = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		String image = request.getParameter("imageURL");
		String des = request.getParameter("description");
		boolean update = new ProductDAO().updateProduct(ID, name, des, price, image, quan);
		if (update){
			httpServletResponse.sendRedirect("../product.htm"); // chuyển hướng tới URL...
			return "product";
		}
		request.setAttribute("msgSaveProduct", "Cập nhật không thành công!");
		return "product_edit";
	}
	@RequestMapping(params = "btnDelete")
	public String delete(HttpServletRequest request, HttpServletResponse httpServletResponse)throws Exception{
		int ID = Integer.parseInt(request.getParameter("productID"));
		boolean update = new ProductDAO().deleteProduct(ID);
		if (update){
			
			httpServletResponse.sendRedirect("product.htm");
		}
		request.setAttribute("msgSaveProduct", "Xoá không thành công!");
		return "product";
	}
	@RequestMapping(params = "btnAdd")
	public String add(HttpServletRequest request, HttpServletResponse httpServletResponse)throws Exception{
		String name = request.getParameter("add_name");
		String des = request.getParameter("add_description");
		double price = Double.parseDouble(request.getParameter("add_price"));
		String image = request.getParameter("add_imageURL");
		int quan = Integer.parseInt(request.getParameter("add_quantity"));
		int add = new ProductDAO().addProduct(name, des, price, image, quan);
		if (add != -1){
			httpServletResponse.sendRedirect("product.htm");
		}
		request.setAttribute("msgSaveProduct", "Thêm không thành công!");
		return "product";
		
	}
}
