package model;

public class Car {

	private int ID;
	private int IDusers;
	private String Model;
	private String Name;
	private int Year;
	private int Price;
	private String Description;
	private String Link;
	
	public Car() {
		super();
	}

	public Car(int iD, int iDusers, String model, String name, int year, String description, int price, String link) {
		super();
		ID = iD;
		IDusers = iDusers;
		Model = model;
		Name = name;
		Year = year;
		Price = price;
		Description = description;
		Link = link;
		
	}
	public String getLink() {
		return Link;
	}

	public void setLink(String link) {
		Link = link;
	}
	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}
	
	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getIDusers() {
		return IDusers;
	}

	public void setIDusers(int iDusers) {
		IDusers = iDusers;
	}

	public String getModel() {
		return Model;
	}

	public void setModel(String model) {
		Model = model;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getYear() {
		return Year;
	}

	public void setYear(int year) {
		Year = year;
	}
	
	
	
	
}
