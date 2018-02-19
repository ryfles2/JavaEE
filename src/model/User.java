package model;

public class User {

	private int ID;
	private String Name;
	private String Mail;
	private String Password;
	private int Phone;
	
	public User() {
		super();
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getMail() {
		return Mail;
	}
	public void setMail(String mail) {
		Mail = mail;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getPhone() {
		return Phone;
	}
	public void setPhone(int phone) {
		Phone = phone;
	}
	public User(int iD, String name, String mail, String password, int phone) {
		super();
		ID = iD;
		Name = name;
		Mail = mail;
		Password = password;
		Phone = phone;
	}
	
	
}
