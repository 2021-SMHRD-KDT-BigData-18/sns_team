package kr.smhrd.entity;

public class Member {
	// 계층 간 ( WEB <-->DB, Back <--> Front )
	// 데이터 전달을 위한 객체
	// DTO, VO
	
	// 1. Table에 있는 컬럼을 반드시 포함(필드)
	// DB의 데이터 타입과 맞아야함
	// 컬럼의 이름 == 변수 이름(Mybatis)
	private String email;
	private String pw;
	private String tel;
	private String address;
	
	// 2. 기본생성자를 반드시 포함
	public Member() {
		
	}

	
	// 3. Getter / Setter 반드시 있어야 함

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
