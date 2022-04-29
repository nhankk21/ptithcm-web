package app.entity;

public class User {
	private String code, lastName, firstName, phoneNum, address, idNum, dayOfBirth;

	public User() {
	}
	public User(String code, String lastName, String firstName, String phoneNum, String address, String idNum, String dayOfBirth) {
		this.code = code;
		this.lastName = lastName;
		this.firstName = firstName;
		this.phoneNum = phoneNum;
		this.address = address;
		this.idNum = idNum;
		this.dayOfBirth = dayOfBirth;
	}

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIdNum() {
		return idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	public String getDayOfBirth() {
		return dayOfBirth;
	}

	public void setDayOfBirth(String dayOfBirth) {
		this.dayOfBirth = dayOfBirth;
	}

	
	

}
