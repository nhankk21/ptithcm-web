package app.dao;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.DatatypeConverter;

import app.context.DBContext;
import app.entity.Account;

public class AccountDAO extends DAO {

	private String getHashedPassword(String password) throws GeneralSecurityException {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(password.getBytes());
		byte[] digest = md.digest();
		String myHash = DatatypeConverter.printHexBinary(digest).toUpperCase();
		return myHash;
	}
	public int checkLogin(String userName, String password) throws Exception {

		password = getHashedPassword(password);
		String query = "exec checklogin @username = '" + userName + "', @password = '" + password + "'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return -1;
		}
		return result;
	}
	public List<Account> getAllAccount(int id){
		List<Account> list = new ArrayList<>();
		String query = "exec getAllAccount @ID=" + id;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				 list.add(new Account(resultSet.getString(1), resultSet.getString(2)));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
		}
		return list;
	}
	public boolean changePassword(String userName, String password) throws Exception {

		password = getHashedPassword(password);

		String query = "exec changePassword @username = '" + userName + "', @newPassword = '" + password + "'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return result != -1;
	}

	public boolean addAnAccount(int userCode, String userName, String password, int role)
			throws GeneralSecurityException {
		password = getHashedPassword(password);
		String query = "exec addAnAccount @userCode = " + userCode + ", @username = '" + userName + "', @password = '"
				+ password + "', @role = " + role + "";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return result == 0;
	}

	public static void main(String[] args) throws Exception {
		
	}
}
