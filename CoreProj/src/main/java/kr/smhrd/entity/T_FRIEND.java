package kr.smhrd.entity;

public class T_FRIEND {
	private int F_SEQ;
	private String U_ID;
	private String F_ID;
	private String F_DT;

	public T_FRIEND() {}

	public T_FRIEND(int f_SEQ, String u_ID, String f_ID, String f_DT) {
		super();
		F_SEQ = f_SEQ;
		U_ID = u_ID;
		F_ID = f_ID;
		F_DT = f_DT;
	}

	public int getF_SEQ() {
		return F_SEQ;
	}

	public void setF_SEQ(int f_SEQ) {
		F_SEQ = f_SEQ;
	}

	public String getU_ID() {
		return U_ID;
	}

	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}

	public String getF_ID() {
		return F_ID;
	}

	public void setF_ID(String f_ID) {
		F_ID = f_ID;
	}

	public String getF_DT() {
		return F_DT;
	}

	public void setF_DT(String f_DT) {
		F_DT = f_DT;
	}
	
	


}
