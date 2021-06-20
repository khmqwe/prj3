package kr.co.sist.domain;

public class PageDomain {
	private int curPage;
	private int cntInPage;//한페이지안에 잇는 내용물의 개수
	private int startInpage;//한 페이지 안의 첫넘버
	private int endInpage;//한 페이지 안의 마지막넘버
	private int startPageNum;//페이지의 첫 번호
	private int endPageNum;//페이지의 마지막 번호
	private boolean prevBtn, nextBtn; //버튼의 유무
	
	public PageDomain() {
	}
	
	public PageDomain(int curPage, int cntInPage, int startInpage, int endInpage, int startPageNum, int endPageNum,
			boolean prevBtn, boolean nextBtn) {
		this.curPage = curPage;
		this.cntInPage = cntInPage;
		this.startInpage = startInpage;
		this.endInpage = endInpage;
		this.startPageNum = startPageNum;
		this.endPageNum = endPageNum;
		this.prevBtn = prevBtn;
		this.nextBtn = nextBtn;
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getCntInPage() {
		return cntInPage;
	}
	public void setCntInPage(int cntInPage) {
		this.cntInPage = cntInPage;
	}
	public int getStartInpage() {
		return startInpage;
	}
	public void setStartInpage(int startInpage) {
		this.startInpage = startInpage;
	}
	public int getEndInpage() {
		return endInpage;
	}
	public void setEndInpage(int endInpage) {
		this.endInpage = endInpage;
	}
	public int getStartPageNum() {
		return startPageNum;
	}
	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}
	public int getEndPageNum() {
		return endPageNum;
	}
	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}
	public boolean getPrevBtn() {
		return prevBtn;
	}
	public void setPrevBtn(boolean prevBtn) {
		this.prevBtn = prevBtn;
	}
	public boolean getNextBtn() {
		return nextBtn;
	}
	public void setNextBtn(boolean nextBtn) {
		this.nextBtn = nextBtn;
	}
	
	
}
