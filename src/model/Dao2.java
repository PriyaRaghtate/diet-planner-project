package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dao2 {
	private String driver="com.mysql.cj.jdbc.Driver";
	private String dbName="project";
	private String url="jdbc:mysql://localhost:3306/"+dbName;
	private String dbname="root";
	private String dbpass="7410765081";
	private String tbname="user_info";
	Connection getConnect() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		return DriverManager.getConnection(url,dbname,dbpass);
}
	public int insertuser(User3 u) throws ClassNotFoundException, SQLException{
		String sql= "INSERT INTO user_info (name, weight, height, meals_per_day, goal, description) VALUES (?, ?, ?, ?, ?, ?)";
		 Connection con=getConnect();
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1, u.getName());
         ps.setInt(2, u.getWeight());
         ps.setInt(3, u.getHeight());
         ps.setInt(4, u.getMealsPerDay());
         ps.setString(5, u.getGoal());
         ps.setString(6, u.getDescription());
         ps.executeUpdate(); 
		return 0;
	}
	public ArrayList<User3> getlist() throws ClassNotFoundException, SQLException{
		String sql="select * from user_info";
		Connection con=getConnect();
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<User3> u=new ArrayList<>();
		while(rs.next()){
			User3 a=new User3();
			a.setId(rs.getInt(1));
			a.setName(rs.getString(2));
			a.setWeight(rs.getInt(3));
			a.setHeight(rs.getInt(4));
			a.setMealsPerDay(rs.getInt(5));
			a.setGoal(rs.getString(6));
			a.setDescription(rs.getString(7));
			u.add(a);
		}
		return u;
		
	}
}
