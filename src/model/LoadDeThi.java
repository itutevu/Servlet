package model;

public class LoadDeThi {
	private String maBaiTest;
	private String nameTest;
	private String loaiBaiTest;
	private String hour;
	private String minute;
	private String sec;
	private int soCauHoi;
	private int mucThi;
	private String fileDeThi;
	public LoadDeThi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LoadDeThi(String maBaiTest, String nameTest, String loaiBaiTest, String hour, String minute, String sec,
			int soCauHoi, int mucThi, String fileDeThi) {
		super();
		this.maBaiTest = maBaiTest;
		this.nameTest = nameTest;
		this.loaiBaiTest = loaiBaiTest;
		this.hour = hour;
		this.minute = minute;
		this.sec = sec;
		this.soCauHoi = soCauHoi;
		this.mucThi = mucThi;
		this.fileDeThi = fileDeThi;
	}
	public String getMaBaiTest() {
		return maBaiTest;
	}
	public void setMaBaiTest(String maBaiTest) {
		this.maBaiTest = maBaiTest;
	}
	public String getNameTest() {
		return nameTest;
	}
	public void setNameTest(String nameTest) {
		this.nameTest = nameTest;
	}
	public String getLoaiBaiTest() {
		return loaiBaiTest;
	}
	public void setLoaiBaiTest(String loaiBaiTest) {
		this.loaiBaiTest = loaiBaiTest;
	}
	public String getHour() {
		return hour;
	}
	public void setHour(String hour) {
		this.hour = hour;
	}
	public String getMinute() {
		return minute;
	}
	public void setMinute(String minute) {
		this.minute = minute;
	}
	public String getSec() {
		return sec;
	}
	public void setSec(String sec) {
		this.sec = sec;
	}
	public int getSoCauHoi() {
		return soCauHoi;
	}
	public void setSoCauHoi(int soCauHoi) {
		this.soCauHoi = soCauHoi;
	}
	public int getMucThi() {
		return mucThi;
	}
	public void setMucThi(int mucThi) {
		this.mucThi = mucThi;
	}
	public String getFileDeThi() {
		return fileDeThi;
	}
	public void setFileDeThi(String fileDeThi) {
		this.fileDeThi = fileDeThi;
	}
	
	
}
