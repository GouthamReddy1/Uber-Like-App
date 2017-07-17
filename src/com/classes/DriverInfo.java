package com.classes;


public class DriverInfo extends UserInfo {

private String longitude;
private String latitude;
private String car_info;
private String isValid;

public DriverInfo(String username, String password) {
	setUserName(username);
	setUserPassword(password);
}
public DriverInfo() {
	// TODO Auto-generated constructor stub
}
public String getLongitude() {
	return longitude;
}
public void setLongitude(String longitude) {
	this.longitude = longitude;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getCar_info() {
	return car_info;
}
public void setCar_info(String car_info) {
	this.car_info = car_info;
}
@Override
public String toString() {
	return "DriverInfo [longitude=" + longitude + ", latitude=" + latitude
			+ ", car_info=" + car_info + "]"+this.toString();
}
public String getIsValid() {
	return isValid;
}
public void setIsValid(String isValid) {
	this.isValid = isValid;
}


}
