package app.entity;

import org.apache.tomcat.util.descriptor.web.Injectable;

public class BillDetail {
	private String name;
	private int num;
	
	public BillDetail(String name, int num) {
		this.name = name;
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
}
