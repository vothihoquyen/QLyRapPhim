package model;

public class GiaoDich {
	private String iDGD;
	private int soGhe;
	private String iDTV;

	public GiaoDich(String iDGD, int soGhe, String iDTV) {
		super();
		this.iDGD = iDGD;
		this.soGhe = soGhe;
		this.iDTV = iDTV;
	}

	@Override
	public String toString() {
		return "GiaoDich [iDGD=" + iDGD + ", soGhe=" + soGhe + ", iDTV=" + iDTV + "]";
	}

	public String getiDGD() {
		return iDGD;
	}

	public void setiDGD(String iDGD) {
		this.iDGD = iDGD;
	}

	public int getSoGhe() {
		return soGhe;
	}

	public void setSoGhe(int soGhe) {
		this.soGhe = soGhe;
	}

	public String getiDTV() {
		return iDTV;
	}

	public void setiDTV(String iDTV) {
		this.iDTV = iDTV;
	}

}
