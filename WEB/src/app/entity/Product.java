package app.entity;

public class Product {
	/**
	 * 
	 */
	private int ID;
	private String name, description;
	private double price;
	private String imageURL;
	private int quantity;
	public Product(int iD, String name, String description, double price, String imageURL, int quantity) {
		this.ID = iD;
		this.name = name;
		this.description = description;
		this.price = price;
		this.imageURL = imageURL;
		this.quantity = quantity;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Product() {
	}
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}	
}
