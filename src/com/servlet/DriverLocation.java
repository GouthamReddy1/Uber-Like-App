package com.servlet;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Map;



import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import com.util.MyConnection;

public class DriverLocation implements Serializable {
	

private String place;
private String latitude;
private String longitude;
private String name;
private int id;
private String truckType;
private String range;

private HttpServletRequest httpServletRequest;
private HttpSession session;

public String getTruckType() {
	return truckType;
}
public void setTruckType(String truckType) {
	this.truckType = truckType;
}


public String getPlace() {
	return place;
}
public void setPlace(String place) {
	this.place = place;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getLongitude() {
	return longitude;
}
public void setLongitude(String longitude) {
	this.longitude = longitude;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}



	public String getRange() {
	return range;
}
public void setRange(String range) {
	this.range = range;
}
	public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
	
	public String locations() throws ClassNotFoundException, SQLException{
	try{
		System.out.println(latitude+"-********************************-- "+longitude);
		Connection conn=MyConnection.getDBConnection();
		PreparedStatement pstmt;
		pstmt=conn.prepareStatement("select * from DRIVER_INFO ");
		
		//System.out.println(truckType+"+ locations[i+2] ");
		
		ResultSet rs=pstmt.executeQuery();
		ResultSetMetaData md = rs.getMetaData();
		
		JSONArray list = new JSONArray();
		System.out.println(rs);
		if(!(rs == null)){
			session = httpServletRequest.getSession(true);
			
			 while( rs.next() )
		      {
				 
		          for( int i = 1; i <= md.getColumnCount(); i++ )
		             System.out.print( rs.getString(i) + " " ) ;
		          System.out.println() ;
		         /*float distance = distFrom(Float.parseFloat(latitude), Float.parseFloat(longitude), Float.parseFloat(latitude), Float.parseFloat(rs.getString("LONGITUDE")));
		          System.out.println("distanec  "+distance);
		          if(distance<Float.parseFloat(range)|| range.equalsIgnoreCase("0")){
		          }*/
		        	  list.add(rs.getString("CAR_INFO"));
			          list.add(rs.getString("LATITUDE"));
			          list.add(rs.getString("LONGITUDE"));
			          list.add(rs.getString("DRIVER_ID"));
		          
		          
		     
				
			}
			 
			 
			
			 session.setAttribute("DRIVERLOCATION1", list);
			// System.out.println(strbuff + "complete list");
			 return "Success";
		}
	}catch(SQLException e){
		System.out.println(e);
		session.setAttribute("ERRORMESSGAE", e);
	}catch (Exception e) {
		System.out.println(e);
		session.setAttribute("ERRORMESSGAE", e);
	}
	return "Failure";
		

		
	}
	

	


}
