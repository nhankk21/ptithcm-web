package app.dao;

import java.util.List;

import app.context.DBContext;
import app.entity.Product;

public class AccountDAO extends DAO{
	public boolean checkLogin(String userName, String password){
		String query = "exec checklogin @username = '" + userName + "', @password = '" + password + "'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
			return false;
		}
		return (result == 0) ? true : false;
	}
	public boolean addAnAccount(String userCode, String userName, String password, String role){
		String query = "exec addAnAccount @userCode = '" + userCode + "', @username = '" + userName + "', @password = '" + password + "', @role = '" + role + "'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
			return false;
		}
		return (result == 0) ? true : false;
	}
	public static void main(String[] args){
		boolean add = new AccountDAO().addAnAccount("8", "nhanvienxxx", "asdas", "1");
		System.out.print(add ? "Yes" : "No");
	}
}
