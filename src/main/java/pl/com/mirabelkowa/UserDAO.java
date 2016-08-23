package pl.com.mirabelkowa;

import java.util.List;

import pl.com.mirabelkowa.User;

public interface UserDAO {

	public void addUser(User user);
	public List<User> listUser();
	public void removeUser (int id);
	public User getUser(int id);
	public void editUser(User user);
	
}
