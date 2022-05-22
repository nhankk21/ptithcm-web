package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import app.dao.AccountDAO;
import app.dao.BillDAO;
import app.dao.UserDAO;
import app.entity.SimpleBill;
import app.entity.User;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	@RequestMapping("")
	public String profile(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws IOException{
		
		String username = (String) request.getSession().getAttribute("username"); // lấy username từ session
		User user = new UserDAO().getUserDetail(username);
		request.setAttribute("user", user); // gửi 1 user lên 1 phiên làm việc
		List<SimpleBill> listSellSimpleBill = new BillDAO().getSellSimpleBills(user.getCode());

		request.setAttribute("listSellBill", listSellSimpleBill);
		
		return "profile";
	}
	@RequestMapping(params = "btnSave")
	public String saveInfo(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws IOException{
		String lastName = request.getParameter("lastName");
		String code = request.getParameter("code");
		String firstName = request.getParameter("firstName");
		String phoneNum = request.getParameter("phoneNum");
		String address = request.getParameter("address");
		String idNum = request.getParameter("idNum");
		String dayOfBirth = request.getParameter("dayOfBirth");
		User user = new User(Integer.parseInt(code), lastName, firstName, phoneNum, address, idNum, dayOfBirth);
		List<SimpleBill> listSellSimpleBill = new BillDAO().getSellSimpleBills(user.getCode());
		request.setAttribute("listSellBill", listSellSimpleBill);
		boolean result = new UserDAO().saveUserInfo(user);
		if(result){
			request.setAttribute("msgSave", "Lưu thông tin thành công!");
		} else {
			request.setAttribute("msgSave", "Lưu thông tin thất bại!");
		}
		request.setAttribute("user", user);
		return "profile";
	}
	@RequestMapping(params = "btnChangePass")
	public String changePassword(ModelMap model, HttpServletRequest request, HttpServletResponse httpServletResponse) throws Exception{
		String username = (String) request.getSession().getAttribute("username");
		String password = (String) request.getSession().getAttribute("password");
		User user = new UserDAO().getUserDetail(username);
		request.setAttribute("user", user);
		List<SimpleBill> listSellSimpleBill = new BillDAO().getSellSimpleBills(user.getCode());
		request.setAttribute("listSellBill", listSellSimpleBill);
		
		String oldPass = request.getParameter("oldPass");
		String newPass = request.getParameter("newPass");
		String re_newPass = request.getParameter("re_newPass");
		
		if(!oldPass.equals(password) || !newPass.equals(re_newPass) || newPass.equals(oldPass)){
			request.setAttribute("msgChangePass", "Cập nhật mật khẩu thất bại!");
			return "profile";
		}
		
		boolean result = new AccountDAO().changePassword(username, newPass);
		if(result){
			request.setAttribute("msgChangePass", "Cập nhật mật khẩu thành công!");
		} else {
			request.setAttribute("msgChangePass", "Cập nhật mật khẩu thất bại!");
		}
		return "profile";
	}
}
