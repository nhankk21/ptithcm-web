package app.entity;

public class SelectedProduct {
	private String ID;
	private String name;
	private int quan;
	public SelectedProduct(String iD, int quan, String name) {
		ID = iD;
		this.quan = quan;
		this.name = name;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getQuan() {
		return quan;
	}
	public void setQuan(int quan) {
		this.quan = quan;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
