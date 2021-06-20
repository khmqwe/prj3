package kr.co.sist.domain;

public class PageDomain {
	private int curPage;
	private int cntInPage;//���������ȿ� �մ� ���빰�� ����
	private int startInpage;//�� ������ ���� ù�ѹ�
	private int endInpage;//�� ������ ���� �������ѹ�
	private int startPageNum;//�������� ù ��ȣ
	private int endPageNum;//�������� ������ ��ȣ
	private boolean prevBtn, nextBtn; //��ư�� ����
	
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
