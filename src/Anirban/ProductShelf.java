package Anirban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductShelf {
	private String pid;
	private int quantity;
	public ProductShelf() {
		
	}
	public ProductShelf(String pid,int quantity) {
		this.pid = pid;
		this.quantity = quantity;
	}
	public String getPid() {
		return pid;
	}
	public int getQuantity() {
		return quantity;
	}
	public ArrayList<ProductShelf> getdetails() {
		ArrayList<ProductShelf> arr = new ArrayList<ProductShelf>();
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","siliguri");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from shelf");
			while(rs.next()) {
				String product_id = rs.getString(1);
				int product_quantity = rs.getInt(2);
				arr.add(new ProductShelf(product_id, product_quantity));
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
