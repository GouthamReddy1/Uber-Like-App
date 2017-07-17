package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.classes.DriverInfo;
import com.controller.ScheduleInfo;
import com.util.MyConnection;

public class DriverDAO {

	public static boolean matchUserAccount(DriverInfo user)
			throws SQLException, ClassNotFoundException {
		
		String username = user.getUserName();    
        String password = user.getUserPassword(); 
        
		System.out.println(username);
		System.out.println(password);
		try {
			Connection conn = MyConnection.getDBConnection();

			Statement pstmt1 = conn
					.createStatement();
			String query1="select * from DRIVER_INFO where DRIVER_ID="+username+" and DRIVER_PASSWORD="+password+"";

			//Statement pstmt2 = conn.createStatement();
			//String query2="select * from USER_INFO where USER_ID="+username+" and USER_PASSWORD="+password+"";

			// System.out.println("Insert Succesfull");
			// pstmt.setInt(1, user.getEmpid());
			/*pstmt1.setString(1, user.getUserName());
			pstmt1.setString(2, user.getUserPassword());

			pstmt2.setString(1, user.getUserName());
			pstmt2.setString(2, user.getUserPassword());

*/			System.out.println("in dao");
			ResultSet resultSet1 = pstmt1.executeQuery(query1);
			//ResultSet resultSet2 = pstmt2.executeQuery(query2);
			boolean more=resultSet1.next();
			
			if (more)
			{
				System.out.println(true);
				return true;
			}
			/*else if(resultSet2.next())
			{
				return true;
			}
			*/	else
				{
					System.out.println();
				return false;
				}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return false;

	}

	public static ArrayList<ScheduleInfo> getUserSchdelueInfo(String username) {

		ArrayList<ScheduleInfo> schedulelist = new ArrayList<>();
		try {
			Connection conn = MyConnection.getDBConnection();

			PreparedStatement pstmt = conn
					.prepareStatement("select u.FIRST_NAME || ' ' || u.LAST_NAME CustName,s.PICKUPPLACE,s.DROPUPPLACE,s.PICKUP_TIME pickUpTime from SCHEDULE_INFO s,USER_INFO u where DRIVER_ID=? and s.USER_ID=u.USER_ID");

			// System.out.println("Insert Succesfull");
			// pstmt.setInt(1, user.getEmpid());
			pstmt.setString(1, username);
			// pstmt.setString(2, user.getDriver_password());

			ResultSet resultSet = pstmt.executeQuery();

			if (resultSet != null) {
				while (resultSet.next()) {
					ScheduleInfo scInfo = new ScheduleInfo();
					scInfo.setCustomerName(resultSet.getString("CustName"));
					scInfo.setPickUpPlace(resultSet.getString("PICKUPPLACE"));
					scInfo.setDropUpPlace(resultSet.getString("DROPUPPLACE"));
					scInfo.setPickup_time(resultSet.getTimestamp("pickUpTime"));
					schedulelist.add(scInfo);
				}
				return schedulelist;
			}

			else
				return schedulelist;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return schedulelist;
	}

	public String insertUserDetails(DriverInfo info)  {
			String status="";
		
		try {
			Connection conn = MyConnection.getDBConnection();

			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO DRIVER_INFO( DRIVER_ID,DRIVERUSERNAME,DRIVER_PASSWORD,"
					+ "FIRST_NAME,LAST_NAME,"
					+ "CONTACT_NUMBER,EMAIL_ID,CAR_INFO,GENDER,STREET,CITY,STATE,COUNTRY,"
					+ "DLNO,CARMAKEMODEL,CARMODEL,CARNUMBER,CVVNO,DOB,EXPDATE) VALUES "
					+ "(customers_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			//info.toString();
			pstmt.setString(1, info.getUserName());
			pstmt.setString(2, info.getUserPassword());
			pstmt.setString(3, info.getfName());
			pstmt.setString(4, info.getlName());
			pstmt.setString(5, info.getContact_number());
			pstmt.setString(6, info.getEmail_ID());
			pstmt.setString(7, info.getCar_info());
			pstmt.setString(8, info.getGender());
			pstmt.setString(9, info.getStreet());
			pstmt.setString(10, info.getCity());
			pstmt.setString(11, info.getState());
			pstmt.setString(12, info.getCountry());
			pstmt.setString(13, info.getDlNo());
			pstmt.setString(14, info.getCarMakeModel());
			pstmt.setString(15, info.getCarModel());
			pstmt.setInt(16, (int) info.getCardNo());
			pstmt.setInt(17, info.getCvvNo());
			pstmt.setDate(18, new java.sql.Date(info.getExpDate().getTime()));
			pstmt.setDate(19, new java.sql.Date(info.getDob().getTime()));
			

			int resultSet = pstmt.executeUpdate();

			if (resultSet>0) {
				status="Success";
				return status;
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
			status=e.toString();
		} catch (Exception ee) {
			ee.printStackTrace();
			status=ee.toString();
		}
		return status;
	}

}
