package kr.co.sist.vo;

public class CommentPageVO {
	private String id;
	private int startNum;
	private int endNum;
	
	public CommentPageVO() {
		
	}
	
	public CommentPageVO(String id, int startNum, int endNum) {
		this.id = id;
		this.startNum = startNum;
		this.endNum = endNum;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
}
