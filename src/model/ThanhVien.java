package model;

public class ThanhVien {
	private String iDTV;
	private String tenTV;
	private String gioiTinh;
	private int tuoi;
	private String loai;
	private String tenDangNhap;
	private String matKhau;

	public ThanhVien(String iDTV, String tenTV, String gioiTinh, int tuoi, String loai, String tenDangNhap,
			String matKhau) {
		super();
		this.iDTV = iDTV;
		this.tenTV = tenTV;
		this.gioiTinh = gioiTinh;
		this.tuoi = tuoi;
		this.loai = loai;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
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
		return "ThanhVien [iDTV=" + iDTV + ", tenTV=" + tenTV + ", gioiTinh=" + gioiTinh + ", tuoi=" + tuoi + ", loai="
				+ loai + ", tenDangNhap=" + tenDangNhap + ", matKhau=" + matKhau + "]";
	}

}
