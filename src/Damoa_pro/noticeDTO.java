package Damoa_pro;

import java.sql.Timestamp;

public class noticeDTO {
	private int num;
	private String subject;
	private String content;
	private String reg_date;
	private int hit;
	public int getNum() {
		return num;
	}
	public String getSubject() {
		return subject;
	}
	public String getContent() {
		return content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public int getHit() {
		return hit;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}
