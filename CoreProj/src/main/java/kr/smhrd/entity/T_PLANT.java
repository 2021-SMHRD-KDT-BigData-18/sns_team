package kr.smhrd.entity;

public class T_PLANT {
	private int PL_SEQ;
	private String U_ID;
	private String PL_NAME;
	private String PL_IMG;
	private String PL_WATER;
	private String PL_START_DT;
	private String PL_DESC;
	private String PL_DT;
	private String PL_CATE;
	
	public T_PLANT(int pL_SEQ, String u_ID, String pL_NAME, String pL_IMG, String pL_WATER, String pL_START_DT,
			String pL_DESC, String pL_DT) {
		super();
		PL_SEQ = pL_SEQ;
		U_ID = u_ID;
		PL_NAME = pL_NAME;
		PL_IMG = pL_IMG;
		PL_WATER = pL_WATER;
		PL_START_DT = pL_START_DT;
		PL_DESC = pL_DESC;
		PL_DT = pL_DT;
	}

	
	public T_PLANT() {
		
	}
	
	public String getPL_CATE() {
		return PL_CATE;
	}

	public void setPL_CATE(String pL_CATE) {
		PL_CATE = pL_CATE;
	}

	

	public int getPL_SEQ() {
		return PL_SEQ;
	}

	public void setPL_SEQ(int pL_SEQ) {
		PL_SEQ = pL_SEQ;
	}

	public String getU_ID() {
		return U_ID;
	}

	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}

	public String getPL_NAME() {
		return PL_NAME;
	}

	public void setPL_NAME(String pL_NAME) {
		PL_NAME = pL_NAME;
	}

	public String getPL_IMG() {
		return PL_IMG;
	}

	public void setPL_IMG(String pL_IMG) {
		PL_IMG = pL_IMG;
	}

	public String getPL_WATER() {
		return PL_WATER;
	}

	public void setPL_WATER(String pL_WATER) {
		PL_WATER = pL_WATER;
	}

	public void setPL_START_DT(String pL_START_DT) {
		PL_START_DT = pL_START_DT;
	}

	public String getPL_DESC() {
		return PL_DESC;
	}

	public void setPL_DESC(String pL_DESC) {
		PL_DESC = pL_DESC;
	}

	public String getPL_DT() {
		return PL_DT;
	}

	public void setPL_DT(String pL_DT) {
		PL_DT = pL_DT;
	}

	public String getPL_START_DT() {
		return PL_START_DT;
	}
	
	
	
	
}
