package kr.smhrd.entity;

public class T_POST_TAG {
	
	private int P_SEQ;
	private int T_SEQ;
	
	public T_POST_TAG() {}

	public T_POST_TAG(int p_SEQ, int t_SEQ) {
		super();
		P_SEQ = p_SEQ;
		T_SEQ = t_SEQ;
	}

	public int getP_SEQ() {
		return P_SEQ;
	}

	public void setP_SEQ(int p_SEQ) {
		P_SEQ = p_SEQ;
	}

	public int getT_SEQ() {
		return T_SEQ;
	}

	public void setT_SEQ(int t_SEQ) {
		T_SEQ = t_SEQ;
	}
	
	

}
