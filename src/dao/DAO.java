package dao;

import java.sql.SQLException;
import java.util.List;

import model.Car;
import model.User;

public interface DAO {

	void addNewUser(User user) throws SQLException;//dodawanie u¿ytkownika
	User getUserById(int id) throws SQLException;//user po id
	Boolean checkUserLogin(String mail, String password) throws SQLException;//logowanie
	Boolean checkUserExist(String mail) throws SQLException;//sprawdzanie czy u¿ytkownik o 
					//okreœlonym mailu jest ju¿ w bazie
	User getUserByMail(String mail) throws SQLException;//user po mail, do logowania
	void addNewCar(Car car) throws SQLException;//dodawanie auta do bazy
	void deleteCar(int id) throws SQLException;//usuwanie auta z bazy
	List<Car> getAllCar() throws SQLException;//wszystkie auta
	List<Car> getCarByIdOwner(int id) throws SQLException;//wszystkie auta u¿ytkownika
	Car getCarById(int id) throws SQLException;//auto po id
	void UpdateCarByID(Car car) throws SQLException;//update auto po id
}
