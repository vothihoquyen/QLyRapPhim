package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import model.LichChieu;;

public class LichChieuDAO {
	public ArrayList<LichChieu> lichchieu;
	public static Map<String, LichChieu> mapLichChieu = loadData();
	public static Set<String> setPhim = getSetPhim();

	public Map<String, LichChieu> getSelectPhim(String maphim) {
		Map<String, LichChieu> phim = new HashMap<>();
		for (LichChieu lichchieu : mapLichChieu.values()) {
			if (lichchieu.getIDphim().equals(phim)) {
				phim.put(lichchieu.getIDsuatchieu(), lichchieu);
			}
		}
		return phim;
	}

	public static Set<String> getSetPhim() {
		Set<String> IDPhim = new HashSet<>();
		for (LichChieu lichchieu : mapLichChieu.values()) {
			IDPhim.add(lichchieu.getIDphim());
		}
		return IDPhim;
	}
	
	public static Map<String, LichChieu> loadData() {
		Map<String, LichChieu> mapTemp = new HashMap<>();
		try {
			ResultSet rs = new DatabaseConnection().selectData("SELECT * FROM dbo.LICHCHIEU");
			while (rs.next()) {
				String IDsuatchieu = rs.getString(1);
				String ngaychieu = rs.getString(2);
				String giochieu = rs.getString(3);
				String IDphim = rs.getString(4);
				
				LichChieu lichchieu = new LichChieu(IDsuatchieu, ngaychieu, giochieu, IDphim);
				mapTemp.put(lichchieu.getIDsuatchieu(), lichchieu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (String string : mapTemp.keySet()) {
			System.out
			.println(mapTemp.get(string));
		}
		return mapTemp;
	}
	public static void main(String[] args) {
		loadData();
	}

	public boolean add(Object obj) {
		LichChieu lichchieu = (LichChieu) obj;
		mapLichChieu.put(lichchieu.getIDsuatchieu(), lichchieu);
		String sql = "insert into dbo.LICHCHIEU values(?,?,?,?)";
		Connection connect = DatabaseConnection.getConnection();
		try {
			PreparedStatement ppstm = connect.prepareStatement(sql);
			ppstm.setString(1, lichchieu.getIDsuatchieu());
			ppstm.setString(2, lichchieu.getNgaychieu());
			ppstm.setString(3, lichchieu.getGio());
			ppstm.setString(4, lichchieu.getIDphim());
			ppstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			System.out.println("erro : " + e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

	public boolean edit(Object obj) {
		LichChieu lichchieu = (LichChieu) obj;
		mapLichChieu.replace(lichchieu.getIDsuatchieu(), lichchieu);
		System.out.println(lichchieu.getIDsuatchieu());
		String sql = "update dbo.LICHCHIEU set IDSUATCHIEU=?, NGAYCHIEU=?, GIO=?, IDPHIM=? where IDSUATCHIEU=?";
		Connection connect = DatabaseConnection.getConnection();
		try {
			PreparedStatement ppstm = connect.prepareStatement(sql);
			ppstm.setString(1,lichchieu.getIDsuatchieu());
			ppstm.setString(2,lichchieu.getNgaychieu());
			ppstm.setString(3,lichchieu.getGio());
			ppstm.setString(4,lichchieu.getIDphim());
			ppstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			System.out.println("erro : " + e.getMessage());
		}
		return false;
	}

	public boolean del(String id) {
		mapLichChieu.remove(id);
		try {
			Connection con = DatabaseConnection.getConnection();
			String sql = ("delete from dbo.LICHCHIEU where IDSUATCHIEU=?");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("erro : " + e.getMessage());
			return false;
		}
	}
}



