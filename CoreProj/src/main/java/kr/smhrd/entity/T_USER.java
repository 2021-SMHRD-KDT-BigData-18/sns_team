package kr.smhrd.entity;

public class T_USER {

	private String U_ID;
	private String U_PW;
	private String U_NICK;
	private String U_PROFILE_IMG;
	private String U_JOINDATE;
	private String U_TYPE;
	
	public T_USER(String u_ID, String u_PW, String u_NICK, String u_PROFILE_IMG, String u_JOINDATE, String u_TYPE) {
		super();
		U_ID = u_ID;
		U_PW = u_PW;
		U_NICK = u_NICK;
		U_PROFILE_IMG = u_PROFILE_IMG;
		U_JOINDATE = u_JOINDATE;
		U_TYPE = u_TYPE;
	}
	public T_USER() {
		
	}

	public String getU_ID() {
		return U_ID;
	}

	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}

	public String getU_PW() {
		return U_PW;
	}

	public void setU_PW(String u_PW) {
		U_PW = u_PW;
	}

	public String getU_NICK() {
		return U_NICK;
	}

	public void setU_NICK(String u_NICK) {
		U_NICK = u_NICK;
	}

	public String getU_PROFILE_IMG() {
		return U_PROFILE_IMG;
	}

	public void setU_PROFILE_IMG(String u_PROFILE_IMG) {
		U_PROFILE_IMG = u_PROFILE_IMG;
	}

	public String getU_JOINDATE() {
		return U_JOINDATE;
	}

	public void setU_JOINDATE(String u_JOINDATE) {
		U_JOINDATE = u_JOINDATE;
	}

	public String getU_TYPE() {
		return U_TYPE;
	}

	public void setU_TYPE(String u_TYPE) {
		U_TYPE = u_TYPE;
	}
	
	
	
	
}
