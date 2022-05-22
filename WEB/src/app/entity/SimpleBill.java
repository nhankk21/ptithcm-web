package app.entity;

public class SimpleBill {
	private int id;
	private double totalMoney;
	private String time;
	public SimpleBill(){};
	public SimpleBill(int id, double totalMoney, String time) {
		super();
		this.id = id;
		this.totalMoney = totalMoney;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
