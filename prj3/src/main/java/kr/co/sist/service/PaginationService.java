package kr.co.sist.service;

public class PaginationService {
	
	private int totalCnt;//리스트안 내용의 총개수
	private int totalPageCnt;//리스트에서 나올 수 있는 총 페이지 카운트
	private int cntInPage;//한페이지안에 잇는 내용물의 개수
	private int startInpage;//한 페이지 안의 첫넘버
	private int endInpage;//한 페이지 안의 마지막넘버
	private int startPageNum;//페이지의 첫 번호
	private int endPageNum;//페이지의 마지막 번호
	private boolean prevBtn, nextBtn; //버튼의 유무
	
	public PaginationService(int curPage, int total) {
		totalCnt = total;
		cntInPage = 10;
		totalPageCnt = (int)Math.ceil(totalCnt / (double)cntInPage);
		
		//1페이지일땐 prev버튼을 없애고 그외의 경우는 prev버튼을 있게 한다.
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
