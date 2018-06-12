package model;

public class Phim {
	private String iDPhim;
	private String tenPhim;
	private String hinh;
	private String ngayKhoiChieu;
	private String dienVien;
	private String iDLPhim;
	private String iDDD;
	private String thoiLuong;
	private String noiDung;
	private String chiTiet;
	public Phim(String iDPhim, String tenPhim, String hinh, String ngayKhoiChieu, String dienVien, String iDLPhim,
			String iDDD, String noiDung, String thoiLuong, String chiTiet) {
		super();
		this.iDPhim = iDPhim;
		this.tenPhim = tenPhim;
		this.hinh = hinh;
		this.ngayKhoiChieu = ngayKhoiChieu;
		this.dienVien = dienVien;
		this.iDLPhim = iDLPhim;
		this.iDDD = iDDD;
		this.noiDung = noiDung;
		this.thoiLuong = thoiLuong;
		this.chiTiet = chiTiet;
	}
	@Override
	public String toString() {
		return "Phim [iDPhim=" + iDPhim + ", tenPhim=" + tenPhim + ", hinh=" + hinh + ", ngayKhoiChieu=" + ngayKhoiChieu
				+ ", dienVien=" + dienVien + ", iDLPhim=" + iDLPhim + ", iDDD=" + iDDD + ", noiDung=" + noiDung
				+ ", thoiLuong=" + thoiLuong + ", chiTiet=" + chiTiet + "]";
	}
	public String getiDPhim() {
		return iDPhim;
	}
	public void setiDPhim(String iDPhim) {
		this.iDPhim = iDPhim;
	}
	public String getTenPhim() {
		return tenPhim;
	}
	public void setTenPhim(String tenPhim) {
		this.tenPhim = tenPhim;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public String getNgayKhoiChieu() {
		return ngayKhoiChieu;
	}
	public void setNgayKhoiChieu(String ngayKhoiChieu) {
		this.ngayKhoiChieu = ngayKhoiChieu;
	}
	public String getDienVien() {
		return dienVien;
	}
	public void setDienVien(String dienVien) {
		this.dienVien = dienVien;
	}
	public String getiDLPhim() {
		return iDLPhim;
	}
	public void setiDLPhim(String iDLPhim) {
		this.iDLPhim = iDLPhim;
	}
	public String getiDDD() {
		return iDDD;
	}
	public void setiDDD(String iDDD) {
		this.iDDD = iDDD;
	}
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	public String getThoiLuong() {
		return thoiLuong;
	}
	public void setThoiLuong(String thoiLuong) {
		this.thoiLuong = thoiLuong;
	}
	public String getChiTiet() {
		return chiTiet;
	}
	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}
	
	
}
