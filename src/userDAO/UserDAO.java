package userDAO;

import java.util.List;

import pojo.User;

public interface UserDAO {
	
	public void addUser(User p);
	public void updateUser(User p);
	public List<User> listUsers();
	public User getByUserName(String Username);
	public void removeUser(String Username);

}
