package kr.smhrd.entity;

public class T_COMMENT {
	
	private int CMT_SEQ;
	private int P_SEQ;
	private String CMT_CONTENT;
	private String CMT_DT;
	private String U_ID;
	
	public T_COMMENT(int cMT_SEQ, int p_SEQ, String cMT_CONTENT, String cMT_DT, String u_ID) {
		super();
		CMT_SEQ = cMT_SEQ;
		P_SEQ = p_SEQ;
		CMT_CONTENT = cMT_CONTENT;
		CMT_DT = cMT_DT;
		U_ID = u_ID;
	}
	
	public int getCMT_SEQ() {
		return CMT_SEQ;
	}
	public void setCMT_SEQ(int cMT_SEQ) {
		CMT_SEQ = cMT_SEQ;
	}
	public int getP_SEQ() {
		return P_SEQ;
	}
	public void setP_SEQ(int p_SEQ) {
		P_SEQ = p_SEQ;
	}
	public String getCMT_CONTENT() {
		return CMT_CONTENT;
	}
	public void setCMT_CONTENT(String cMT_CONTENT) {
		CMT_CONTENT = cMT_CONTENT;
	}
	public String getCMT_DT() {
		return CMT_DT;
	}
	public void setCMT_DT(String cMT_DT) {
		CMT_DT = cMT_DT;
	}
	public String getU_ID() {
		return U_ID;
	}
	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}
	
	
	
}
