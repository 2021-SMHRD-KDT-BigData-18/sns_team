package kr.smhrd.entity;

public class T_TAG {
	
	private int T_SEQ;
	private String T_NAME;
	
	public T_TAG() {}

	public T_TAG(int t_SEQ, String t_NAME) {
		super();
		T_SEQ = t_SEQ;
		T_NAME = t_NAME;
	}

	public int getT_SEQ() {
		return T_SEQ;
	}

	public void setT_SEQ(int t_SEQ) {
		T_SEQ = t_SEQ;
	}

	public String getT_NAME() {
		return T_NAME;
	}

	public void setT_NAME(String t_NAME) {
		T_NAME = t_NAME;
	}
	
	
}
