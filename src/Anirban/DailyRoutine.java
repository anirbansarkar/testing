package Anirban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DailyRoutine {
	private String day,gapscan,gapfill;
	public DailyRoutine() {
		
	}
	public DailyRoutine(String day,String gapscan,String gapfill) {
		this.day = day;
		this.gapscan = gapscan;
		this.gapfill = gapfill;
	}
	public String getDay() {
		return day;
	}
	public String getGapscan() {
		return gapscan;
	}
	public String getGapfill() {
		return gapfill;
	}
	public ArrayList<DailyRoutine> getRoutines() {
		ArrayList<DailyRoutine> arr = new ArrayList<DailyRoutine>();
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","siliguri");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from dailyroutine");
			while(rs.next()) {
				String day = rs.getString(1);
				int gs = rs.getInt(2);
				int gf = rs.getInt(3);
				String gapscan = (gs == 1) ? "Yes" : "No";
				String gapfill = (gf == 1) ? "Yes" : "No";
				arr.add(new DailyRoutine(day, gapscan, gapfill));
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
