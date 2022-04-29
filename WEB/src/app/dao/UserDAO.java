package app.dao;

import app.context.DBContext;

public class UserDAO extends DAO{
	public boolean addAUser(String userCode, String lastName, String firstName, String idNum){
		String query = "exec addAUser @userCode = '" + userCode + "', @lastName = '" + lastName + "', @firstName = '" + firstName + "', @idNum = '" + idNum + "'";
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
		boolean add = new UserDAO().addAUser("8", "Nguyen", "Nam", "94384843");
		System.out.print(add ? "Yes" : "No");
	}
	
}
