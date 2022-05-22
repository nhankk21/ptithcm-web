package app.dao;

import java.util.ArrayList;
import java.util.List;

import app.context.DBContext;
import app.entity.Product;

public class ProductDAO extends DAO {
	public ProductDAO() {
		// TODO Auto-generated constructor stub
	}

	public List<Product> getTopProduct(int num) {


		List<Product> list = new ArrayList<>();//hứng data từ db
		
		
		String query = "exec getTopProduct @num = " + num; // query: sp
		try {
			connection = new DBContext().getConnection(); // connect
			preparedStatement = connection.prepareStatement(query); // chạy sp
			resultSet = preparedStatement.executeQuery(); // lấy data 
			while (resultSet.next()) {
				list.add(new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getDouble(4), resultSet.getString(5), resultSet.getInt(6)));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());;
		}

		return list;
	}

	
	public Product getProductDetail(String ID){
		String query = "exec getProductDetail @ID = " + ID;
		Product product = new Product();
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				product = (new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getDouble(4), resultSet.getString(5), resultSet.getInt(6)));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return product;
	}
	public List<Product> getProductWithKey(String key) {
		List<Product> list = new ArrayList<>();
		String query = "exec findProduct @key = '" + key + "'";
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				
				list.add(new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getDouble(4), resultSet.getString(5), resultSet.getInt(6)));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return list;
	}

	public List<Product> getAllProcducts() {
		List<Product> list = new ArrayList<>();
		String query = "exec getAllProducts";
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				list.add(new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getDouble(4), resultSet.getString(5), resultSet.getInt(6)));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return list;
	}
	
	public boolean updateProduct(int id, String name, String des, double price, String image, int quan){
		int res = -1;
		String query = "exec updateProduct @ID = " + id + ", @newName = '" + name + "', @newDes = '" + des + "', @newPrice = " + price + ", @newImage = '" + image + "', @newNum = " + quan;
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
	public boolean deleteProduct(int id){
		int res = -1;
		String query = "exec deleteProduct @ID = " + id;
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
	public int addProduct(String name, String des, double price, String image, int quan){
		int res = -1;
		String query = "exec addProduct @name = '" + name + "', @des = '," + des + "', @price = " + price + ", @image = '" + image +"', @quan = " + quan;
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
		return res;
	}
	public static void main(String[] args) {
		
	}
}
