package model;

public class DaoDien {
	private String idDD;
	private String tenDD;
	private String queQuan;

	public DaoDien(String idDD, String tenDD, String queQuan) {
		super();
		this.idDD = idDD;
		this.tenDD = tenDD;
		this.queQuan = queQuan;
	}

	@Override
	public String toString() {
		return "DaoDien [idDD=" + idDD + ", tenDD=" + tenDD + ", queQuan=" + queQuan + "]";
	}

	public String getIDDD() {
		return idDD;
	}

	public void setIDDD(String iDDD) {
		this.idDD = iDDD;
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
