package kr.smhrd.entity;

public class T_CHATROOM {
	
	private int CR_SEQ;
	private String U_ID;
	private String CR_TITLE;
	private String CR_DESC;
	private int CR_LIMIT;
	private String CR_DT;
	
	public T_CHATROOM(int cR_SEQ, String u_ID, String cR_TITLE, String cR_DESC, int cR_LIMIT, String cR_DT) {
		super();
		CR_SEQ = cR_SEQ;
		U_ID = u_ID;
		CR_TITLE = cR_TITLE;
		CR_DESC = cR_DESC;
		CR_LIMIT = cR_LIMIT;
		CR_DT = cR_DT;
	}
	
	public int getCR_SEQ() {
		return CR_SEQ;
	}

	public void setCR_SEQ(int cR_SEQ) {
		CR_SEQ = cR_SEQ;
	}

	public String getU_ID() {
		return U_ID;
	}

	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}

	public String getCR_TITLE() {
		return CR_TITLE;
	}

	public void setCR_TITLE(String cR_TITLE) {
		CR_TITLE = cR_TITLE;
	}

	public String getCR_DESC() {
		return CR_DESC;
	}

	public void setCR_DESC(String cR_DESC) {
		CR_DESC = cR_DESC;
	}

	public int getCR_LIMIT() {
		return CR_LIMIT;
	}

	public void setCR_LIMIT(int cR_LIMIT) {
		CR_LIMIT = cR_LIMIT;
	}

	public String getCR_DT() {
		return CR_DT;
	}

	public void setCR_DT(String cR_DT) {
		CR_DT = cR_DT;
	}

	
	
	
	
}
