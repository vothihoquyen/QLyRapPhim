package model;

public class DaoDien {
	private String iDDD;
	private String tenDD;
	private String queQuan;

	public DaoDien(String iDDD, String tenDD, String queQuan) {
		super();
		this.iDDD = iDDD;
		this.tenDD = tenDD;
		this.queQuan = queQuan;
	}

	@Override
	public String toString() {
		return "DaoDien [iDDD=" + iDDD + ", tenDD=" + tenDD + ", queQuan=" + queQuan + "]";
	}

	public String getiDDD() {
		return iDDD;
	}

	public void setiDDD(String iDDD) {
		this.iDDD = iDDD;
	}

	public String getTenDD() {
		return tenDD;
	}

	public void setTenDD(String tenDD) {
		this.tenDD = tenDD;
	}

	public String getQueQuan() {
		return queQuan;
	}

	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}

}
