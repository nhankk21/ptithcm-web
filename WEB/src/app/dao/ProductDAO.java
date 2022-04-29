package app.dao;

import java.util.ArrayList;
import java.util.List;

import app.context.DBContext;
import app.entity.Product;

public class ProductDAO extends DAO{
	public ProductDAO() {
		// TODO Auto-generated constructor stub
	}
	public List<Product> getTopProduct(int num){
		
		//Be careful when using this func, I use price as total money
		// Use this func when you want to get top products(by total money) in some days
		
		List<Product> list = new ArrayList<>();
		String query = "exec getTopProductInCurrentDay @num = " + num;
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				list.add(new Product(
						resultSet.getString(1), 
						resultSet.getString(2),
						"",
						resultSet.getDouble(3), // price as total money, not price of this product
						resultSet.getString(4),
						"",
						""
						));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		// I told you and I will not take responsibility for you getting trouble while using this function :))) 
		
		return list;
	}
	public List<Product> getProductWithKey(String key){
		List<Product> list = new ArrayList<>();
		String query = "exec findProduct @key = '" + key + "'";
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				list.add(new Product(
						resultSet.getString(1), 
						resultSet.getString(2),
						"",
						resultSet.getDouble(3),
						resultSet.getString(4),
						"",
						""
						));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return list;
	}
	public List<Product> getAllProcducts(){
		List<Product> list = new ArrayList<>();
		String query = "exec getAllProducts";
		try {
			connection = new DBContext().getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				list.add(new Product(
						resultSet.getString(1), 
						resultSet.getString(2),
						"",
						resultSet.getDouble(3),
						resultSet.getString(4),
						"",
						""
						));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return list;
	}
	public static void main(String[] args){
		List<Product> list = new ProductDAO().getTopProduct(10);
		System.out.print(list.get(0).getName());
	}
}
