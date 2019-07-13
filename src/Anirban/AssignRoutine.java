package Anirban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class AssignRoutine {
	
	public void update(String day,int gapscan,int gapfill) {
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","siliguri");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("update dailyroutine set gapscan="+gapscan+",gapfill="+gapfill+" where day='"+day+"'");
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
