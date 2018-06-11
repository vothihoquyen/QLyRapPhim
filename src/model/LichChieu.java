package model;

public class LichChieu {
	private String IDSuatChieu;
	private String ngayChieu;
	private String gio;
	private String IDPhim;
	public LichChieu(String iDSuatChieu, String ngayChieu, String gio, String iDPhim) {
		super();
		IDSuatChieu = iDSuatChieu;
		this.ngayChieu = ngayChieu;
		this.gio = gio;
		IDPhim = iDPhim;
	}
	@Override
	public String toString() {
		return "LichChieu [IDSuatChieu=" + IDSuatChieu + ", ngayChieu=" + ngayChieu + ", gio=" + gio + ", IDPhim="
				+ IDPhim + "]";
	}
	public String getIDSuatChieu() {
		return IDSuatChieu;
	}
	public void setIDSuatChieu(String iDSuatChieu) {
		IDSuatChieu = iDSuatChieu;
	}
	public String getNgayChieu() {
		return ngayChieu;
	}
	public void setNgayChieu(String ngayChieu) {
		this.ngayChieu = ngayChieu;
	}
	public String getGio() {
		return gio;
	}
	public void setGio(String gio) {
		this.gio = gio;
	}
	public String getIDPhim() {
		return IDPhim;
	}
	public void setIDPhim(String iDPhim) {
		IDPhim = iDPhim;
	}

	
}
