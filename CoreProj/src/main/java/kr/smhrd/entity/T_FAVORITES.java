package kr.smhrd.entity;

public class T_FAVORITES {
	
	private int FAV_SEQ;
	private int P_SEQ;
	private String U_ID;
	private String FAV_DT;
	
	public T_FAVORITES(int fAV_SEQ, int p_SEQ, String u_ID, String fAV_DT) {
		super();
		FAV_SEQ = fAV_SEQ;
		P_SEQ = p_SEQ;
		U_ID = u_ID;
		FAV_DT = fAV_DT;
	}
	
	public int getFAV_SEQ() {
		return FAV_SEQ;
	}
	public void setFAV_SEQ(int fAV_SEQ) {
		FAV_SEQ = fAV_SEQ;
	}
	public int getP_SEQ() {
		return P_SEQ;
	}
	public void setP_SEQ(int p_SEQ) {
		P_SEQ = p_SEQ;
	}
	public String getU_ID() {
		return U_ID;
	}
	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}
	public String getFAV_DT() {
		return FAV_DT;
	}
	public void setFAV_DT(String fAV_DT) {
		FAV_DT = fAV_DT;
	}
	
	
	
}
