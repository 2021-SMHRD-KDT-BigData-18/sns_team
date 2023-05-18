package kr.smhrd.entity;

public class T_CHATTING {
	private int CHAT_SEQ;
	private int CR_SEQ;
	private String TALKER;
	private String CHAT_CONTENT;
	private String CHAT_DT;
	private String CHAT_EMOTICON;
	
	public T_CHATTING(int cHAT_SEQ, int cR_SEQ, String tALKER, String cHAT_CONTENT, String cHAT_DT,
			String cHAT_EMOTICON) {
		super();
		CHAT_SEQ = cHAT_SEQ;
		CR_SEQ = cR_SEQ;
		TALKER = tALKER;
		CHAT_CONTENT = cHAT_CONTENT;
		CHAT_DT = cHAT_DT;
		CHAT_EMOTICON = cHAT_EMOTICON;
	}
	
	public T_CHATTING() {}
	
	public int getCHAT_SEQ() {
		return CHAT_SEQ;
	}
	public void setCHAT_SEQ(int cHAT_SEQ) {
		CHAT_SEQ = cHAT_SEQ;
	}
	public int getCR_SEQ() {
		return CR_SEQ;
	}
	public void setCR_SEQ(int cR_SEQ) {
		CR_SEQ = cR_SEQ;
	}
	public String getTALKER() {
		return TALKER;
	}
	public void setTALKER(String tALKER) {
		TALKER = tALKER;
	}
	public String getCHAT_CONTENT() {
		return CHAT_CONTENT;
	}
	public void setCHAT_CONTENT(String cHAT_CONTENT) {
		CHAT_CONTENT = cHAT_CONTENT;
	}
	public String getCHAT_DT() {
		return CHAT_DT;
	}
	public void setCHAT_DT(String cHAT_DT) {
		CHAT_DT = cHAT_DT;
	}
	public String getCHAT_EMOTICON() {
		return CHAT_EMOTICON;
	}
	public void setCHAT_EMOTICON(String cHAT_EMOTICON) {
		CHAT_EMOTICON = cHAT_EMOTICON;
	}
	
	
}
