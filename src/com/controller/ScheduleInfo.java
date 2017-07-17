package com.controller;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class ScheduleInfo implements Serializable{

	private String schedule_ID;
	private String user_ID;
	private String driver_ID;
	private String pickup_longitude;
	private String pickup_latitude;
	private String dropoff_longitude;
	private String dropoff_latitude	;
	private Date start_date;
	private Date end_date;
	private Timestamp pickup_time;
	private String days;
	private String CustomerName;
	private String pickUpPlace;
	private String dropUpPlace;
	
	
	
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public String getPickUpPlace() {
		return pickUpPlace;
	}
	public void setPickUpPlace(String pickUpPlace) {
		this.pickUpPlace = pickUpPlace;
	}
	public String getDropUpPlace() {
		return dropUpPlace;
	}
	public void setDropUpPlace(String dropUpPlace) {
		this.dropUpPlace = dropUpPlace;
	}
	public String getSchedule_ID() {
		return schedule_ID;
	}
	public void setSchedule_ID(String schedule_ID) {
		this.schedule_ID = schedule_ID;
	}
	public String getUser_ID() {
		return user_ID;
	}
	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}
	public String getDriver_ID() {
		return driver_ID;
	}
	public void setDriver_ID(String driver_ID) {
		this.driver_ID = driver_ID;
	}
	public String getPickup_longitude() {
		return pickup_longitude;
	}
	public void setPickup_longitude(String pickup_longitude) {
		this.pickup_longitude = pickup_longitude;
	}
	public String getPickup_latitude() {
		return pickup_latitude;
	}
	public void setPickup_latitude(String pickup_latitude) {
		this.pickup_latitude = pickup_latitude;
	}
	public String getDropoff_longitude() {
		return dropoff_longitude;
	}
	public void setDropoff_longitude(String dropoff_longitude) {
		this.dropoff_longitude = dropoff_longitude;
	}
	public String getDropoff_latitude() {
		return dropoff_latitude;
	}
	public void setDropoff_latitude(String dropoff_latitude) {
		this.dropoff_latitude = dropoff_latitude;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Timestamp getPickup_time() {
		return pickup_time;
	}
	public void setPickup_time(Timestamp timestamp) {
		this.pickup_time = timestamp;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
		
	
}
