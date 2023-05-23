package kr.smhrd.entity;

public class T_EVENT {

	private int EVENT_SEQ;
	private int PL_SEQ;
	private String EVENT;
	private String DT_START;
	private String DT_END;
	
	public T_EVENT() {
		
	}

	public int getEVENT_SEQ() {
		return EVENT_SEQ;
	}

	public void setEVENT_SEQ(int eVENT_SEQ) {
		EVENT_SEQ = eVENT_SEQ;
	}

	public int getPL_SEQ() {
		return PL_SEQ;
	}

	public void setPL_SEQ(int pL_SEQ) {
		PL_SEQ = pL_SEQ;
	}

	public String getEVENT() {
		return EVENT;
	}

	public void setEVENT(String eVENT) {
		EVENT = eVENT;
	}

	public String getDT_START() {
		return DT_START;
	}

	public void setDT_START(String dT_START) {
		DT_START = dT_START;
	}

	public String getDT_END() {
		return DT_END;
	}

	public void setDT_END(String dT_END) {
		DT_END = dT_END;
	}
	
	
}
