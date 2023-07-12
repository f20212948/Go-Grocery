package user;

public class admin extends user {
	private int adminId;
	admin(String name ,String uname,String pwd,String ph ,String add,int adminId){
		
		super(name,uname,pwd,ph,add);
		
		this.setadminId(adminId);
		
	}
	
	public int getadminId() {
		return adminId;
	}
	public void setadminId(int adminId) {
		this.adminId = adminId;
	}

}
