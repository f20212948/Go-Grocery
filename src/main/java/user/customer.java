package user;
import java.util.Random;

public class customer extends user{
	private int money;
	private long id;
	
	public customer(String name ,String uname,String pwd,String ph ,String add,long id,int money){
		super(name,uname,pwd,ph,add);
		this.id= id;
		this.money=money;
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public void addMoney(int addAmount) {
		this.money = money+addAmount;
	}

	public void removeMoney(int removeCost) {
		this.money = money-removeCost;
	}
	
	public static int newId(int l,long idArr[]) {
		Random rand= new Random();
		int randId = rand.nextInt(1000000, 9999999);
		for(int i= 0;i<l;i++){
			if (idArr[i]==randId) {
				randId = rand.nextInt(1000000, 9999999);
				i=0;
			}
		}
		return randId;
	}

}
