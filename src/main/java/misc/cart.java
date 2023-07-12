package misc;

public class cart {
	private int[] inCartItemCodes;
	private int NumItems;
	private int[] inCartItemQuantity;
	private int total;
	cart(){
		this.NumItems = 0;
		setTotal(0);
		setInCartItemCodes(new int[20]);
		setInCartItemQuantity(new int[20]);
		
	}
	public int[] getInCartItemCodes() {
		return inCartItemCodes;
	}
	public void setInCartItemCodes(int[] inCartItemCodes) {
		this.inCartItemCodes = inCartItemCodes;
	}
	public void addInCartItemCodes(int inCartItemCode) {
		this.inCartItemCodes[this.NumItems] = inCartItemCode;
	}
	public void removeInCartItemCodes(int index) {
		for(int i  = index;i<this.NumItems;i++) {
			this.inCartItemCodes[i] = this.inCartItemCodes[i+1];	
		}
		this.inCartItemCodes[this.NumItems] = 0;
		
	}
	public int getNumItems() {
		return NumItems;
	}
	public void addNumItems() {
		NumItems++;
	}
	public void reduceNumItems() {
		NumItems--;
	}
	public int[] getInCartItemQuantity() {
		return inCartItemQuantity;
	}
	public void setInCartItemQuantity(int[] inCartItemQuantity) {
		this.inCartItemQuantity = inCartItemQuantity;
	}
	public void addInCartItemQuantity(int inCartItemQuantity) {
		this.inCartItemQuantity[this.NumItems] = inCartItemQuantity;
	}
	public void removeInCartItemQuantity(int index) {
		for(int i  = index;i<this.NumItems;i++) {
			this.inCartItemQuantity[i] = this.inCartItemQuantity[i+1];	
		}
		this.inCartItemQuantity[this.NumItems] = 0;
		
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	

}
