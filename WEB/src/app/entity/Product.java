package app.entity;

public class Product {
	/**
	 * 
	 */
	private String ID, name, description;
	private double price;
	private String imageURL, discount, categoryID;
	public Product() {
	}
	public Product(String ID, String name, String des, double price, String image, String discount, String cat){
		this.discount = discount;
		this.name = name;
		this.price = price;
		this.ID = ID;
		this.description = des;
		this.imageURL = image;
		this.categoryID = cat;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
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
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
		
}
