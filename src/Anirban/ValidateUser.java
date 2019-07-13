package Anirban;
import java.io.Serializable;
import java.sql.*;
public class ValidateUser implements Serializable {
	private String uname,pass,role;
	public ValidateUser() {

	}
	public void setUname(String u1) {
		this.uname = u1;
	}
	public void setPass(String p1) {
		this.pass = p1;
	}
	public void setRole(String r1) {
		this.role = r1;
	}
	public String getUname() {
		return uname;
	}
	public String getPass() {
		return pass;
	}
	public String getRole() {
		return role;
	}
	public int validate() {
		int value = 0;
		try {
			System.out.println("Entering try block");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/store","root","siliguri");
			System.out.println("Connected");
			Statement stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from login_table where username='"+uname+"' and password='"+pass+"' and role='"+role+"'");
			if(rs.next()) {
				if (role.equals("man")) {
					value = 1;
				}
				else {
					value = 2;
				}
			}
			con.close();
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			value = 3;
		}
		return value;
	}
}
