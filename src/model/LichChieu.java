package model;

public class LichChieu {
	private String iDSuatChieu;
	private String ngayChieu;
	private String gio;
	private String iDPhim;

	public LichChieu(String iDSuatChieu, String ngayChieu, String gio, String iDPhim) {
		super();
		this.iDSuatChieu = iDSuatChieu;
		this.ngayChieu = ngayChieu;
		this.gio = gio;
		this.iDPhim = iDPhim;
	}

	public String getiDSuatChieu() {
		return iDSuatChieu;
	}

	public void setiDSuatChieu(String iDSuatChieu) {
		this.iDSuatChieu = iDSuatChieu;
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

	public String getiDPhim() {
		return iDPhim;
	}

	public void setiDPhim(String iDPhim) {
		this.iDPhim = iDPhim;
	}

	@Override
	public String toString() {
		return "LichChieu [iDSuatChieu=" + iDSuatChieu + ", ngayChieu=" + ngayChieu + ", gio=" + gio + ", iDPhim="
				+ iDPhim + "]";
	}

}
