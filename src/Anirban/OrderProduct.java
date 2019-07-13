package Anirban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class OrderProduct {
	public void order(int quantity[]) {
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","siliguri");
			System.out.println("Connected");
			for (int i = 0; i < 9; i++) {
				Statement stmt = con.createStatement();
				stmt.executeUpdate("update ordered set quantity="+quantity[i]+" where pid='P"+(i + 1)+"'");
			}
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
