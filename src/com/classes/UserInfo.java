package com.classes;

import java.util.Date;

public class UserInfo {
	private String userName;
	private String userPassword;
	private String fName;
	private String lName;
	private String contact_number;
	private String email_ID;
	private String gender;
	private Date dob;
	private String street;
	private String city;
	private String state;
	private String country;
	private String dlNo;
	private String carMakeModel;
	private String carModel;
	private String carNumber;
	private double cardNo;
	private int cvvNo;
	private Date expDate;


	
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Date getExpDate() {
		return expDate;
	}
	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getDlNo() {
		return dlNo;
	}
	public void setDlNo(String dlNo) {
		this.dlNo = dlNo;
	}
	public String getCarMakeModel() {
		return carMakeModel;
	}
	public void setCarMakeModel(String carMakeModel) {
		this.carMakeModel = carMakeModel;
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public String getCarNumber() {
		return carNumber;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}

	public double getCardNo() {
		return cardNo;
	}
	public void setCardNo(double cardNo) {
		this.cardNo = cardNo;
	}
	public int getCvvNo() {
		return cvvNo;
	}
	public void setCvvNo(int cvvNo) {
		this.cvvNo = cvvNo;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getContact_number() {
		return contact_number;
	}
	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}
	public String getEmail_ID() {
		return email_ID;
	}
	public void setEmail_ID(String email_ID) {
		this.email_ID = email_ID;
	}
	@Override
	public String toString() {
		return "UserInfo [userName=" + userName + ", userPassword="
				+ userPassword + ", fName=" + fName + ", lName=" + lName
				+ ", contact_number=" + contact_number + ", email_ID="
				+ email_ID + "]";
	}
	public boolean isValid() {
		return isValid;
	}
	public void setValid(boolean isValid) {
		this.isValid = isValid;
	}
	public boolean isValid;
	
	
	
}
