package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import model.Phim;

public class PhimDAO {
	public ArrayList<Phim> phim;
	public static Map<String, Phim> mapPhim= getLoadCustomerDatabase();
	public static Map<String , Phim> mapUndo = new HashMap<>();

	
	public static boolean add(Object obj) {
		Phim phim = (Phim) obj;
		mapPhim.put(phim.getiDPhim(), phim);
		int i;
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement statement = connection.prepareStatement("insert into PHIM values(?,?,?,?,?,?,?,?,?,?)");
	        statement.setString(1, phim.getiDPhim());
	        statement.setNString(2, phim.getTenPhim());
	        statement.setNString(3, phim.getHinh());
	        statement.setNString(4, phim.getNgayKhoiChieu());
	        statement.setNString(5, phim.getDienVien());
	        statement.setString(6, phim.getiDLPhim());
	        statement.setString(7, phim.getiDDD());
	        statement.setNString(8, phim.getThoiLuong());
	        statement.setNString(9, phim.getNoiDung());
	        statement.setNString(10, phim.getChiTiet());
	        
	        i= statement.executeUpdate();
	        statement.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		if(i>0) {
		return true;
	}
		return false;
	}
	private static Map<String, Phim> getLoadCustomerDatabase() {
		Map<String, Phim> listPhim = new HashMap<String, Phim>();
		try {
			ResultSet rs = new DBConnect().chonDuLieuTuDTB("select * from PHIM");
			
		while(rs.next()){
			String IDPHIM = rs.getString(1);
			String TENPHIM = rs.getNString(2);
			String HINH = rs.getNString(3);
			String NGAYKHOICHIEU = rs.getNString(4);
			String DIENVIEN = rs.getNString(5);
			String IDLPHIM = rs.getString(6);
			String IDDD = rs.getString(7);
			String THOILUONG = rs.getNString(8);
			String NOIDUNG = rs.getNString(9);
			String CHITIET = rs.getNString(10);
			
		}
		return listPhim;
		}catch (Exception e) {
			System.out.println("Lỗi ở  getLoadCustomerDatabase" +e.getMessage());
		e.printStackTrace();
		}
		return listPhim;
	}

	
	public static boolean edit(Object obj, String mc) {
		Phim phim = (Phim) obj;
		mapPhim.replace(phim.getiDPhim(), phim);
		try {
			delete(mc);
			add(phim);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}

	
	public static boolean delete(String IDPHIM) {
		mapPhim.remove(IDPHIM);
		System.out.println("IDPHIM = " + IDPHIM);
		int i;
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "delete from PHIM where IDPHIM = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, IDPHIM);
			i = pr.executeUpdate();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		if(i>0) {
			System.out.println("Da xoa");
			return true;
		}
		System.out.println("i = " + i);
		return false;
	}

	
public int radom(int init) {
	Random rdRandom = new Random();
	int res = rdRandom.nextInt(init);
	while(mapPhim.containsKey("Phim" +res)) {
		res = rdRandom.nextInt(init);
	}
	return res;
}
public Phim find(String IDPHIM) {
	return mapPhim.get(IDPHIM);
}
public boolean deAll() {
	mapUndo.putAll(mapPhim);
	mapUndo.clear();
	return true;
}
public static Phim getTV(String IDPHIM) {
	try {
		Connection connection = DBConnect.getConnection();
		String sql = "select * from PHIM where IDPHIM = ? ;";
		PreparedStatement pr = connection.prepareStatement(sql);
		pr.setString(1, IDPHIM);
		ResultSet rs =pr.executeQuery();
		Phim tv = null;
		while(rs.next()) {
			tv = new Phim(rs.getString("IDPHIM"), rs.getNString("TENPHIM"),rs.getNString("HINH"),rs.getNString("NGAYKHOICHIEU"), rs.getNString("DIENVIEN"),rs.getString("IDLPHIM"),rs.getString("IDDD"),rs.getNString("THOILUONG"),rs.getNString("NOIDUNG"),rs.getNString("CHITIET"));
			
		}
		connection.close();
		return tv;
	} catch (Exception e) {
		System.out.println("Hàm Lấy khách hàng bị lỗi");
		e.getStackTrace();
		return null;
		
	}
}
}
