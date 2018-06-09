package model;

public class PhimSapChieu {
	private String iDPhimSC;
	private String tenPhimSC;
	private String hinh;
	private String ngayKhoiChieu;
	private String dienVien;
	private String iDLPhim;
	private String iDDD;
	private String thoiLuong;
	
	public PhimSapChieu(String iDPhimSC, String tenPhimSC, String hinh, String ngayKhoiChieu, String dienVien,
			String iDLPhim, String iDDD, String thoiLuong) {
		super();
		this.iDPhimSC = iDPhimSC;
		this.tenPhimSC = tenPhimSC;
		this.hinh = hinh;
		this.ngayKhoiChieu = ngayKhoiChieu;
		this.dienVien = dienVien;
		this.iDLPhim = iDLPhim;
		this.iDDD = iDDD;
		this.thoiLuong = thoiLuong;
	}

	@Override
	public String toString() {
		return "PhimSapChieu [iDPhimSC=" + iDPhimSC + ", tenPhimSC=" + tenPhimSC + ", hinh=" + hinh + ", ngayKhoiChieu="
				+ ngayKhoiChieu + ", dienVien=" + dienVien + ", iDLPhim=" + iDLPhim + ", iDDD=" + iDDD + ", thoiLuong="
				+ thoiLuong + "]";
	}
	

}
