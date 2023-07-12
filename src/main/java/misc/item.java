package misc;

public class item {
	private long itemCode;
	private String itemImg;
	private int itemCost;
	private int quantRemain;
	private String itemName;
	private String Discription;
	private String Category;
	private int discount;

	public item(long itemCode, String itemImg, int itemCost, int quantRemain, String itemName, String discription,
			String category, int discount) {
		super();
		this.itemCode = itemCode;
		this.itemImg = itemImg;
		this.itemCost = itemCost;
		this.quantRemain = quantRemain;
		this.itemName = itemName;
		Discription = discription;
		Category = category;
		this.discount = discount;
	}

	public long getItemCode() {
		return itemCode;
	}

	public void setItemCode(long itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemImg() {
		return itemImg;
	}

	public void setItemImg(String itemImg) {
		this.itemImg = itemImg;
	}

	public int getItemCost() {
		return itemCost;
	}

	public void setItemCost(int itemCost) {
		this.itemCost = itemCost;
	}

	public int getQuantRemain() {
		return quantRemain;
	}

	public void setQuantRemain(int quantRemain) {
		this.quantRemain = quantRemain;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getDiscription() {
		return Discription;
	}

	public void setDiscription(String discription) {
		Discription = discription;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
}
