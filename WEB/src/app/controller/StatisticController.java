package app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import app.dao.BillDAO;
import app.dao.UserDAO;
import app.entity.BillDetail;
import app.entity.SimpleBill;

@Controller
@RequestMapping("/statistic")
public class StatisticController {
	private static int curBillID = 0;

	@RequestMapping("")
	public String statisticPage(HttpServletRequest request, HttpServletResponse httpServletResponse) {
		String username = (String) request.getSession().getAttribute("username");
		int userID = new UserDAO().getUserID(username);
		List<SimpleBill> listSellSimpleBill = new BillDAO().getSellSimpleBills(userID);
		List<BillDetail> listDetail = new ArrayList<>();
		request.setAttribute("list", listSellSimpleBill);
		try {
			listDetail = new BillDAO().getBillDetail(listSellSimpleBill.get(curBillID).getId());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		request.setAttribute("listDetail", listDetail);
		return "statistic";
	}

	@RequestMapping(params = "btnDetail")
	public String detail(HttpServletRequest request, HttpServletResponse httpServletResponse) {
		String username = (String) request.getSession().getAttribute("username");
		String id = request.getParameter("bill_id");
		int userID = new UserDAO().getUserID(username);
		List<SimpleBill> listSellSimpleBill = new BillDAO().getSellSimpleBills(userID);
		request.setAttribute("list", listSellSimpleBill);
		List<BillDetail> listDetail = new BillDAO().getBillDetail(Integer.parseInt(id));
		request.setAttribute("listDetail", listDetail);
		return "statistic";
	}
}
