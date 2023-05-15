package kr.smhrd.entity;

public class T_POST {
	
	private int P_SEQ;
	private int P_VIEWS;
	private int P_LIKES;
	private String P_TITLE;
	private String P_CONTENT;
	private String P_FILE;
	private String P_DT;
	private String U_ID;
	
	public T_POST() {}
	
	public T_POST(int p_SEQ, int p_VIEWS, int p_LIKES, String p_TITLE, String p_CONTENT, String p_FILE, String p_DT,
			String u_ID) {
		super();
		P_SEQ = p_SEQ;
		P_VIEWS = p_VIEWS;
		P_LIKES = p_LIKES;
		P_TITLE = p_TITLE;
		P_CONTENT = p_CONTENT;
		P_FILE = p_FILE;
		P_DT = p_DT;
		U_ID = u_ID;
	}
	
	public int getP_SEQ() {
		return P_SEQ;
	}
	public void setP_SEQ(int p_SEQ) {
		P_SEQ = p_SEQ;
	}
	public int getP_VIEWS() {
		return P_VIEWS;
	}
	public void setP_VIEWS(int p_VIEWS) {
		P_VIEWS = p_VIEWS;
	}
	public int getP_LIKES() {
		return P_LIKES;
	}
	public void setP_LIKES(int p_LIKES) {
		P_LIKES = p_LIKES;
	}
	public String getP_TITLE() {
		return P_TITLE;
	}
	public void setP_TITLE(String p_TITLE) {
		P_TITLE = p_TITLE;
	}
	public String getP_CONTENT() {
		return P_CONTENT;
	}
	public void setP_CONTENT(String p_CONTENT) {
		P_CONTENT = p_CONTENT;
	}
	public String getP_FILE() {
		return P_FILE;
	}
	public void setP_FILE(String p_FILE) {
		P_FILE = p_FILE;
	}
	public String getP_DT() {
		return P_DT;
	}
	public void setP_DT(String p_DT) {
		P_DT = p_DT;
	}
	public String getU_ID() {
		return U_ID;
	}
	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}	
	
}
