package user;

public class manager extends user {
	private int managerId;
	manager(String name ,String uname,String pwd,String ph ,String add,int managerId){
		
		super(name,uname,pwd,ph,add);
		
		this.setManagerId(managerId);
		
	}
	
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}

}
