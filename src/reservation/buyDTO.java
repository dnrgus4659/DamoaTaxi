package reservation;

import java.sql.Timestamp;

public class buyDTO {
	private int num;
	private String id;
	private String name;
	private String driver;
	private String getIn;
	private String getOut;
	private String requestContent;
	private int price;
	private String buy_date;
	private String account;
	private String status;
	public int getNum() {
		return num;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDriver() {
		return driver;
	}
	public String getGetIn() {
		return getIn;
	}
	public String getGetOut() {
		return getOut;
	}
	public String getRequestContent() {
		return requestContent;
	}
	public int getPrice() {
		return price;
	}
	public String getBuy_date() {
		return buy_date;
	}
	public String getAccount() {
		return account;
	}
	public String getStatus() {
		return status;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public void setGetIn(String getIn) {
		this.getIn = getIn;
	}
	public void setGetOut(String getOut) {
		this.getOut = getOut;
	}
	public void setRequestContent(String requestContent) {
		this.requestContent = requestContent;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setStatus(String status) {
		this.status = status;
	}
		
}
