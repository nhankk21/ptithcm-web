package app.dao;

import java.util.ArrayList;
import java.util.List;

import app.context.DBContext;
import app.entity.User;

public class UserDAO extends DAO{
	public boolean addAUser(String lastName, String firstName, String phoneNum, String address, String idNum, String DOB){
		String query = "exec addUser @lastName = '" + lastName + "', @firstName = '" + firstName + "', @phoneNum = '" + phoneNum + "', @address = '" + address + "', @idNum = '" + idNum + "', @DOB = '" + DOB + "'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return result != -1;
	}
	
	public List<User> getAllUser(){
		List<User> list = new ArrayList<>();
		String query = "exec getAllUser";
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				list.add(new User(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7)));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	public User getUserDetail(String username){
		String query = "exec getUserDetail @username = '"+ username +"'";
		User user = new User();
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				user = new User(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return user;
	}
	public User getUserByID(int code){
		String query = "exec getUserByID @ID = "+ code;
		User user = new User();
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				user = new User(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return user;
	}
	public boolean deleteUser(int id){
		int res = -1;
		String query = "exec deleteUser @ID = " + id;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				res = resultSet.getInt(1);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res != -1;
	}
	public boolean saveUserInfo(User user){
		
		String query = "exec saveUserInfo @userCode = " +  user.getCode() + ", @newLastName = '" + user.getLastName() + "', @newFirstName = '" + user.getFirstName() + "', @newPhoneNum = '" + user.getPhoneNum() + "', @newAddress= '" + user.getAddress() + "', @newIdNum = '" + user.getIdNum() + "', @newDOB = '" + user.getDayOfBirth() +"'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return result != -1;
	}
	public int getUserID(String username){
		String query = "exec getUserID @username = '" +  username + "'";
		int result = -1;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				result = resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return -1;
		}
		return result;
	}
	public static void main(String[] args){
		
	}
	
}
