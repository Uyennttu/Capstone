package entity;

public class Tour {
	private int id;
	private String name;
	private String city;
	private String imgName;
	private double rating;
	private int numOfRate;
	private double price;
	private boolean bestSeller;
	private String state;
	
	
	public Tour() {
		// TODO Auto-generated constructor stub
	}


	public Tour(int id, String name, String city, String imgName, double rating, int numOfRate, double price,
			boolean bestSeller) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.imgName = imgName;
		this.rating = rating;
		this.numOfRate = numOfRate;
		this.price = price;
		this.bestSeller = bestSeller;
	}


	public Tour(int id, String name, String city, String imgName, double rating, int numOfRate, double price,
			boolean bestSeller, String state) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.imgName = imgName;
		this.rating = rating;
		this.numOfRate = numOfRate;
		this.price = price;
		this.bestSeller = bestSeller;
		this.state = state;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getImgName() {
		return imgName;
	}


	public void setImgName(String imgName) {
		this.imgName = imgName;
	}


	public double getRating() {
		return rating;
	}


	public void setRating(double rating) {
		this.rating = rating;
	}


	public int getNumOfRate() {
		return numOfRate;
	}


	public void setNumOfRate(int numOfRate) {
		this.numOfRate = numOfRate;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public boolean isBestSeller() {
		return bestSeller;
	}


	public void setBestSeller(boolean bestSeller) {
		this.bestSeller = bestSeller;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}

	

}
