package model;

public class ThanhVien {
	private String iDTV;
	private String tenTV;
	private String gioiTinh;
	private String ngaySinh;
	private String matKhau;
        private String loaiTV;

	public ThanhVien( String iDTV, String tenTV, String gioiTinh, String ngaySinh, String matKhau) {
		this.iDTV = iDTV;
		this.tenTV = tenTV;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.matKhau = matKhau;
                this.loaiTV = "user";
	}
	

	public String getNgaySinh() {
		return ngaySinh;
	}


	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
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


	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

        public String getLoai(){
            return this.loaiTV;
        }
        
	@Override
	public String toString() {
		return "ThanhVien [iDTV=" + iDTV + ", tenTV=" + tenTV + ", gioiTinh=" + gioiTinh + ", ngaySinh=" + ngaySinh
				+ ", matKhau=" + matKhau + "]";
	}

	

}
