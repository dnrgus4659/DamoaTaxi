package Damoa_pro;

import java.sql.Timestamp;

public class CommentDTO {
	int num; 
	int boardID;
    String id;
    String content;
    Timestamp reg_date;
    int ref;
    int re_step;
    int re_level;
    
	public int getNum() {
		return num;
	}
	public int getBoardID() {
		return boardID;
	}
	public String getId() {
		return id;
	}
	public String getContent() {
		return content;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public int getRef() {
		return ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setBoardID(int boardID) {
		this.boardID = boardID;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
    
    
}
