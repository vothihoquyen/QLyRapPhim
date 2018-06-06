package model;

public class ThanhVien {
	private int STT;
	private String iDTV;
	private String tenTV;
	private String gioiTinh;
	private int tuoi;
	private String ngaySinh;
	private String loai;
	private String tenDangNhap;
	private String matKhau;

	public ThanhVien(int sTT, String iDTV, String tenTV, String gioiTinh, int tuoi, String ngaySinh, String loai,
			String tenDangNhap, String matKhau) {
		super();
		STT = sTT;
		this.iDTV = iDTV;
		this.tenTV = tenTV;
		this.gioiTinh = gioiTinh;
		this.tuoi = tuoi;
		this.ngaySinh = ngaySinh;
		this.loai = loai;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
	}
	

	public String getNgaySinh() {
		return ngaySinh;
	}


	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}


	public int getSTT() {
		return STT;
	}

	public void setSTT(int sTT) {
		STT = sTT;
	}

	public String getiDTV() {
		return iDTV;
	}

	public void setiDTV(String iDTV) {
		this.iDTV = iDTV;
	}

	public String getTenTV() {
		return tenTV;
	}

	public void setTenTV(String tenTV) {
		this.tenTV = tenTV;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public int getTuoi() {
		return tuoi;
	}

	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}

	public String getLoai() {
		return loai;
	}

	public void setLoai(String loai) {
		this.loai = loai;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	@Override
	public String toString() {
		return "ThanhVien [STT=" + STT + ", iDTV=" + iDTV + ", tenTV=" + tenTV + ", gioiTinh=" + gioiTinh + ", tuoi="
				+ tuoi + ", ngaySinh=" + ngaySinh + ", loai=" + loai + ", tenDangNhap=" + tenDangNhap + ", matKhau="
				+ matKhau + "]";
	}

}
