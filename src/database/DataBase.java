package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.DAO;
import model.Car;
import model.User;

public class DataBase implements DAO {

	Connection con;
	Statement stm;
	
	public DataBase() throws SQLException, InstantiationException, IllegalAccessException 
	{
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		con = DriverManager.getConnection("jdbc:mysql://localhost/javaee?"+"user=root&password=");		
		stm = con.createStatement();
	}
	
	@Override
	public void addNewUser(User user) throws SQLException {
		String query = "INSERT INTO users (Name,Mail,Password,Phone) VALUES ('"+user.getName()+"','"+user.getMail()+"','"+user.getPassword()+"','"+user.getPhone()+"')";
		System.out.println(query);
		stm.executeUpdate(query);
	}

	@Override
	public User getUserById(int id) throws SQLException {
		String query = "SELECT * from users WHERE ID = "+id;
		ResultSet result = stm.executeQuery(query);
		User u = new User();
		while(result.next()) 
		{
			u.setID(result.getInt("ID"));
			u.setMail(result.getString("Mail"));
			u.setName(result.getString("Name"));
			u.setPhone(result.getInt("Phone"));
		}
		return u;
	}

	@Override
	public Boolean checkUserLogin(String mail, String password) throws SQLException {
		String query = "SELECT * from users WHERE Mail = '"+mail+"' AND Password = '"+password+"' ";
		ResultSet result = stm.executeQuery(query);
		return result.next();
	}

	@Override
	public Boolean checkUserExist(String mail) throws SQLException {
		String query = "SELECT * from users WHERE Mail = '"+mail+"' ";
		ResultSet result = stm.executeQuery(query);
		return result.next();
	}

	@Override
	public void addNewCar(Car car) throws SQLException {
		String query = "INSERT INTO cars (IDusers, Model, Name, Year, Price, Description, Link) VALUES ('"+car.getIDusers()+"','"+car.getModel()+"','"+car.getName()+"','"+car.getYear()+"','"+car.getPrice()+"','"+car.getDescription()+"','"+car.getLink()+"')";
		System.out.println(query);
		stm.executeUpdate(query);

	}

	@Override
	public void deleteCar(int id) throws SQLException {
		String query = "DELETE FROM cars WHERE id = "+id;
		System.out.println(query);
		stm.executeUpdate(query);
	}

	@Override
	public List<Car> getAllCar() throws SQLException {
		List<Car> cars = new ArrayList<Car>();
		String query = "SELECT * FROM cars";
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Car c = new Car();
			c.setID(result.getInt("ID"));
			c.setIDusers(result.getInt("IDusers"));
			c.setModel(result.getString("Model"));
			c.setName(result.getString("Name"));
			c.setYear(result.getInt("Year"));
			c.setPrice(result.getInt("Price"));
			c.setDescription(result.getString("Description"));
			c.setLink(result.getString("Link"));
			cars.add(c);
		}
		return cars;
	}

	@Override
	public List<Car> getCarByIdOwner(int id) throws SQLException {
		List<Car> cars = new ArrayList<Car>();
		String query = "SELECT * FROM cars WHERE IDusers = "+id;
		ResultSet result = stm.executeQuery(query);
		while(result.next()) 
		{
			Car c = new Car();
			c.setID(result.getInt("ID"));
			c.setIDusers(result.getInt("IDusers"));
			c.setModel(result.getString("Model"));
			c.setName(result.getString("Name"));
			c.setYear(result.getInt("Year"));
			c.setPrice(result.getInt("Price"));
			c.setDescription(result.getString("Description"));
			c.setLink(result.getString("Link"));
			cars.add(c);
		}
		return cars;
	}

	@Override
	public User getUserByMail(String mail) throws SQLException {
		String query = "SELECT * from users WHERE mail = '"+mail+"'";
		ResultSet result = stm.executeQuery(query);
		User u = new User();
		while(result.next()) 
		{
			u.setID(result.getInt("ID"));
			u.setMail(result.getString("Mail"));
			u.setName(result.getString("Name"));
			u.setPhone(result.getInt("Phone"));
		}
		
		return u;
	}

	@Override
	public Car getCarById(int ID) throws SQLException {
		String query = "SELECT * from cars WHERE ID = "+ ID;
		ResultSet result = stm.executeQuery(query);
		Car c = new Car();
		while(result.next()) 
		{
			c.setID(result.getInt("ID"));
			c.setIDusers(result.getInt("IDusers"));
			c.setModel(result.getString("Model"));
			c.setName(result.getString("Name"));
			c.setYear(result.getInt("Year"));
			c.setPrice(result.getInt("Price"));
			c.setDescription(result.getString("Description"));
			c.setLink(result.getString("Link"));
		}	
		return c;
	}

	@Override
	public void UpdateCarByID(Car car) throws SQLException {
		String query = "UPDATE cars\r\n" + 
				"		SET Model = '"+car.getModel()+"', Name= '"+car.getName()+"', Year= '"+car.getYear()+"', Price='"+car.getPrice()+"', Description= '"+car.getDescription()+"', Link=  '"+car.getLink()+"'  \r\n" + 
				"		WHERE ID = "+ car.getID();
		
		System.out.println(query);
		stm.executeUpdate(query);
	}
	
}
