package Anirban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CheckThreshold {
	private String pid;
	public CheckThreshold() {
		
	}
	public CheckThreshold(String pid) {
		this.pid = pid;
	}	
	public String getPid() {
		return pid;
	}	
	public ArrayList<CheckThreshold> getList() {
		ArrayList<CheckThreshold> arr = new ArrayList<CheckThreshold>();
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","siliguri");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select sh.pid from shelf as sh,threshold as th,ordered as od "
					+ "where sh.pid = th.pid and sh.pid = od.pid and sh.quantity + od.quantity <= th.quantity");
			while(rs.next()) {
				String product_id = rs.getString(1);
				arr.add(new CheckThreshold(product_id));
			}
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return arr;
	}	
}
