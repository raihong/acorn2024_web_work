package frienddto.java;

public class FriendDto {
	private int num;
	private String name;
	private String pn;
	
	public FriendDto() {}

	public FriendDto(int num, String name, String pn) {
		super();
		this.num = num;
		this.name = name;
		this.pn = pn;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPn() {
		return pn;
	}

	public void setPn(String pn) {
		this.pn = pn;
	}
	
}