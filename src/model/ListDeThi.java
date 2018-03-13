package model;

public class ListDeThi {
	private String maBaiTest;
	private String thoiGian;
	private String fileDapAn;
	private String fileDeThi;
	private String NguoiUp;
	private String maLoai;
	private String mucThi;
	private String name;
	public ListDeThi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ListDeThi(String maBaiTest, String thoiGian, String fileDapAn, String fileDeThi, String nguoiUp,
			String maLoai, String mucThi, String name) {
		super();
		this.maBaiTest = maBaiTest;
		this.thoiGian = thoiGian;
		this.fileDapAn = fileDapAn;
		this.fileDeThi = fileDeThi;
		NguoiUp = nguoiUp;
		this.maLoai = maLoai;
		this.mucThi = mucThi;
		this.name=name;
	}
	public String getMaBaiTest() {
		return maBaiTest;
	}
	public void setMaBaiTest(String maBaiTest) {
		this.maBaiTest = maBaiTest;
	}
	public String getThoiGian() {
		return thoiGian;
	}
	public void setThoiGian(String thoiGian) {
		this.thoiGian = thoiGian;
	}
	public String getFileDapAn() {
		return fileDapAn;
	}
	public void setFileDapAn(String fileDapAn) {
		this.fileDapAn = fileDapAn;
	}
	public String getFileDeThi() {
		return fileDeThi;
	}
	public void setFileDeThi(String fileDeThi) {
		this.fileDeThi = fileDeThi;
	}
	public String getNguoiUp() {
		return NguoiUp;
	}
	public void setNguoiUp(String nguoiUp) {
		NguoiUp = nguoiUp;
	}
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	public String getMucThi() {
		return mucThi;
	}
	public void setMucThi(String mucThi) {
		this.mucThi = mucThi;
	}
	
}
