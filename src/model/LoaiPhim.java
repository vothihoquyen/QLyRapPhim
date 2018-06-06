package model;

public class LoaiPhim {
	private String iDLPhim;
	private String tenPhim;
	private String moTa;

	public LoaiPhim(String iDLPhim, String tenPhim, String moTa) {
		super();
		this.iDLPhim = iDLPhim;
		this.tenPhim = tenPhim;
		this.moTa = moTa;
	}

	public String getiDLPhim() {
		return iDLPhim;
	}

	public void setiDLPhim(String iDLPhim) {
		this.iDLPhim = iDLPhim;
	}

	public String getTenPhim() {
		return tenPhim;
	}

	public void setTenPhim(String tenPhim) {
		this.tenPhim = tenPhim;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	@Override
	public String toString() {
		return "LoaiPhim [iDLPhim=" + iDLPhim + ", tenPhim=" + tenPhim + ", moTa=" + moTa + "]";
	}

}
