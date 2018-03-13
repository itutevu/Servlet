package model;

public class LichSuTest {
	private String nameTest;
	private int count;
	private String dateTest;
	private String timeForTest;
	private int mark;
	public LichSuTest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LichSuTest(String nameTest, int count, String dateTest, String timeForTest, int mark) {
		super();
		this.nameTest = nameTest;
		this.count = count;
		this.dateTest = dateTest;
		this.timeForTest = timeForTest;
		this.mark = mark;
	}
	public String getNameTest() {
		return nameTest;
	}
	public void setNameTest(String nameTest) {
		this.nameTest = nameTest;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getDateTest() {
		return dateTest;
	}
	public void setDateTest(String dateTest) {
		this.dateTest = dateTest;
	}
	public String getTimeForTest() {
		return timeForTest;
	}
	public void setTimeForTest(String timeForTest) {
		this.timeForTest = timeForTest;
	}
	public int getMark() {
		return mark;
	}
	public void setMark(int mark) {
		this.mark = mark;
	}
	
}
