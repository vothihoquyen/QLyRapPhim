package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DBConnect {
	public static Connection getConnection() {
		Connection connection = null;
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://localhost:1433;databaseName=QLYRAPPHIM";
		String user = "sa";
		String pass = "nhi";
		
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public boolean createTableIntoDatabase(String tableName, ArrayList<String> column) {
		String sql="CREATE TABLE" + tableName + " (";
		for (int i = 0; i < column.size(); i++) {
			if(i!=column.size()-1) {
				//nếu là cột không phải là cippó cùng thì cuối giá trị sẽ là dấu ,
				sql+=column.get(i)+"nvarchar(255);)";
			}else {
					//nếu là cột cuối thì đóng dâu ngoặt và ;
					sql+=column.get(i) + "nvarchar(255) );";
				}
			}
		try {
			//truyền đối tượng connect lấy đc vào
			Connection connect = getConnection();
			Statement stmt = connect.createStatement();
			stmt.executeUpdate(sql);
		} catch (Exception e) {
		  System.out.println(e.getMessage());
		  e.printStackTrace();
		  return false;
		}
		return true;
		}
	public void thucThiCaulenhSQL(String sql) throws Exception{
		Connection connect = getConnection();
		Statement stmt= connect.createStatement();
		stmt.executeUpdate(sql);
		
	}
	public ResultSet chonDuLieuTuDTB(String sql) throws Exception {
		Connection connect= getConnection();
		Statement stmt = connect.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		return rs;
	}
	public void excuteSql(String sql) throws Exception {
		Connection connect = getConnection();
		Statement stmt = connect.createStatement();
		stmt.executeUpdate(sql);
	}

	public ResultSet selectData(String sql) throws Exception {
		Connection connect = getConnection();
		Statement stmt = connect.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		return rs;
	}
	public static void main(String[] args) {
		Connection connection = DBConnect.getConnection();
		if (connection != null) {
			System.out.println("Kết nối thành công");
		} else {
			System.out.println("Kết nối thất bại");
		}
	}
}
