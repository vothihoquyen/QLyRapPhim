package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import model.ThanhVien;

public class ThanhVienDAO {
	public ArrayList<ThanhVien> tv;
	public static Map<String, ThanhVien> mapThanhVien= getLoadCustomerDatabase();
	public static Map<String , ThanhVien> mapUndo = new HashMap<>();

	
	public static boolean add(Object obj) {
		ThanhVien tv = (ThanhVien) obj;
		mapThanhVien.put(tv.getiDTV(), tv);
		int i;
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement statement = connection.prepareStatement("insert into THANHVIEN values(?,?,?,?,?)");
	        statement.setString(1, tv.getiDTV());
	        statement.setNString(2, tv.getTenTV());
	        statement.setNString(3, tv.getGioiTinh());
	        statement.setString(4, tv.getNgaySinh());
	        statement.setString(5, tv.getMatKhau());
	        
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
	private static Map<String, ThanhVien> getLoadCustomerDatabase() {
		Map<String, ThanhVien> listCustomer = new HashMap<String, ThanhVien>();
		try {
			ResultSet rs = new DBConnect().chonDuLieuTuDTB("select * from THANHVIEN");
			
		while(rs.next()){
			String IDTV = rs.getString(1);
			String TENTV = rs.getNString(2);
			String GIOITINH = rs.getNString(3);
			String NGAYSINH = rs.getString(4);
			String MATKHAU = rs.getString(5);
			
		}
		return listCustomer;
		}catch (Exception e) {
			System.out.println("Lỗi ở  getLoadCustomerDatabase" +e.getMessage());
		e.printStackTrace();
		}
		return listCustomer;
	}

	
	public static boolean edit(Object obj, String mc) {
		ThanhVien tv = (ThanhVien) obj;
		mapThanhVien.replace(tv.getiDTV(), tv);
		try {
			delete(mc);
			add(tv);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}

	
	public static boolean delete(String IDTV) {
		mapThanhVien.remove(IDTV);
		System.out.println("IDTV = " + IDTV);
		int i;
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "delete from THANHVIEN where IDTV = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, IDTV);
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
	while(mapThanhVien.containsKey("TV" +res)) {
		res = rdRandom.nextInt(init);
	}
	return res;
}
public ThanhVien find(String IDTV) {
	return mapThanhVien.get(IDTV);
}
public boolean deAll() {
	mapUndo.putAll(mapThanhVien);
	mapUndo.clear();
	return true;
}
public static ThanhVien getTV(String IDTV) {
	try {
		Connection connection = DBConnect.getConnection();
		String sql = "select * from THANHVIEN where IDTV = ? ;";
		PreparedStatement pr = connection.prepareStatement(sql);
		pr.setString(1, IDTV);
		ResultSet rs =pr.executeQuery();
		ThanhVien tv = null;
		while(rs.next()) {
			tv = new ThanhVien(rs.getString("IDTV"), rs.getNString("TENTV"),rs.getNString("GIOITINH"),rs.getString("NGAYSINH"), rs.getString("MATKHAU"));
			
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
