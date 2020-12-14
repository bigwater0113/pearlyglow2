package kr.co.pearlyglow.vo.join;

import java.sql.Date;

public class MyReviewVo {
	private String id;			//���ų���T ���̵�
	private int pNum;			//���ų���T ���Ź�ȣ
	private String pStatus;		//���ų���T ������
	private Date pDate;			//���ų���T ���ų�¥
	private int pdNum;			//�� T �󼼹�ȣ
	private int iNum;			//  ��ǰ T ǰ��
	private String iName;		//  ��ǰ T ǰ��
	private String iThumbnail;	//  ��ǰ T ������̹�����
	private int pCnt;			//�� T ���Ű���
	private int pPay;			//�� T ��ǰ���ݾ�
	private int score;			// ���� T ��
	private String rbContent;	// ���� T ����
	private String saveName;	// ���� T �̹�����
	private Date rDate;			// ���� T ���䳯¥
	public MyReviewVo() {
		super();
	}
	public MyReviewVo(String id, int pNum, String pStatus, Date pDate, int pdNum, int iNum, String iName,
			String iThumbnail, int pCnt, int pPay, int score, String rbContent, String saveName, Date rDate) {
		super();
		this.id = id;
		this.pNum = pNum;
		this.pStatus = pStatus;
		this.pDate = pDate;
		this.pdNum = pdNum;
		this.iNum = iNum;
		this.iName = iName;
		this.iThumbnail = iThumbnail;
		this.pCnt = pCnt;
		this.pPay = pPay;
		this.score = score;
		this.rbContent = rbContent;
		this.saveName = saveName;
		this.rDate = rDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public String getpStatus() {
		return pStatus;
	}
	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	public int getPdNum() {
		return pdNum;
	}
	public void setPdNum(int pdNum) {
		this.pdNum = pdNum;
	}
	public int getiNum() {
		return iNum;
	}
	public void setiNum(int iNum) {
		this.iNum = iNum;
	}
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
	}
	public String getiThumbnail() {
		return iThumbnail;
	}
	public void setiThumbnail(String iThumbnail) {
		this.iThumbnail = iThumbnail;
	}
	public int getpCnt() {
		return pCnt;
	}
	public void setpCnt(int pCnt) {
		this.pCnt = pCnt;
	}
	public int getpPay() {
		return pPay;
	}
	public void setpPay(int pPay) {
		this.pPay = pPay;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getRbContent() {
		return rbContent;
	}
	public void setRbContent(String rbContent) {
		this.rbContent = rbContent;
	}
	public String getSaveName() {
		return saveName;
	}
	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
}
