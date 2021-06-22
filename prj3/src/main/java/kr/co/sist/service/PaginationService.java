package kr.co.sist.service;

public class PaginationService {
	
	private int totalCnt;//����Ʈ�� ������ �Ѱ���
	private int totalPageCnt;//����Ʈ���� ���� �� �ִ� �� ������ ī��Ʈ
	private int cntInPage;//���������ȿ� �մ� ���빰�� ����
	private int startInpage;//�� ������ ���� ù�ѹ�
	private int endInpage;//�� ������ ���� �������ѹ�
	private int startPageNum;//�������� ù ��ȣ
	private int endPageNum;//�������� ������ ��ȣ
	private boolean prevBtn, nextBtn; //��ư�� ����
	
	public PaginationService(int curPage, int total) {
		totalCnt = total;
		cntInPage = 10;
		totalPageCnt = (int)Math.ceil(totalCnt / (double)cntInPage);
		
		//1�������϶� prev��ư�� ���ְ� �׿��� ���� prev��ư�� �ְ� �Ѵ�.
		if (curPage != 1) {
			prevBtn = true;
		} else {
			prevBtn = false;
		}
		
		if (curPage != totalPageCnt) {
			nextBtn = true; 
		} else {
			nextBtn = false;
		}
		
		if (totalCnt == 0) {
			prevBtn = false;
			nextBtn = false;
		}
		
		if (curPage * 10 > totalCnt) {
			endInpage = totalCnt;
			cntInPage = totalCnt - ((curPage-1) * 10);
		} else {
			endInpage = curPage*cntInPage;
		}
		
		endPageNum = ((curPage - 1) / 5 + 1) * 5;
		startPageNum = endPageNum - 4;
		
		if (endPageNum > totalPageCnt) {
			endPageNum = totalPageCnt;
		}
		
		startInpage = (curPage-1) * 10 + 1;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	public int getTotalPageCnt() {
		return totalPageCnt;
	}

	public void setTotalPageCnt(int totalPageCnt) {
		this.totalPageCnt = totalPageCnt;
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

	public boolean isPrevBtn() {
		return prevBtn;
	}

	public void setPrevBtn(boolean prevBtn) {
		this.prevBtn = prevBtn;
	}

	public boolean isNextBtn() {
		return nextBtn;
	}

	public void setNextBtn(boolean nextBtn) {
		this.nextBtn = nextBtn;
	}
}
