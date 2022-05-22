package app.dao;

import java.util.ArrayList;
import java.util.List;

import app.context.DBContext;
import app.entity.BillDetail;
import app.entity.SimpleBill;

public class BillDAO extends DAO {
	public List<SimpleBill> getSellSimpleBills(int userId) {
		List<SimpleBill> list = new ArrayList<>();
		String query = "exec getAllBills @userId = " + userId;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				list.add(new SimpleBill(resultSet.getInt(1), resultSet.getDouble(2), resultSet.getString(3)));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return list;
	}
	public int addBill(String userID, String type, String address, String phone){
		int res = -1;
		String query = "exec addBill @userId = " + userID + ", @type = '" + type + "', @address = '" + address + "', @phone = '" + phone + "'";
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				res = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return res;
	}
	public int addProductToBill(int productID, int num, int billID){
		int res = -1;
		String query = "exec addProductToBill @productID = " + productID + ", @quan = " + num + ", @billID = " + billID;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				res = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return res;
	}
	public List<BillDetail> getBillDetail(int billID){
		List<BillDetail> list = new ArrayList<>();
		String query = "exec getBillDetail @billID = " + billID;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				list.add( new BillDetail(resultSet.getString(1), resultSet.getInt(2)));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
