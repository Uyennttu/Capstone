package entity;

public class Tour {
	private int id;
	private String name;
	private String destination;
	private String imgName;
	private double rating;
	private int numOfRate;
	private double price;
	private boolean likelySellOut;
	
	public Tour() {
		// TODO Auto-generated constructor stub
	}

	public Tour(int id, String name, String destination, String imgName, double rating, int numOfRate, double price,
			boolean likelySellOut) {
		super();
		this.id = id;
		this.name = name;
		this.destination = destination;
		this.imgName = imgName;
		this.rating = rating;
		this.numOfRate = numOfRate;
		this.price = price;
		this.likelySellOut = likelySellOut;
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

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
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

	public boolean isLikelySellOut() {
		return likelySellOut;
	}

	public void setLikelySellOut(boolean likelySellOut) {
		this.likelySellOut = likelySellOut;
	}
	
	

}
