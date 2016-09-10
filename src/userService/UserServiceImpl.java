package userService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pojo.User;
import userDAO.UserDAO;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public void addUser(User p) {
		
		userDAO.addUser(p);
	}

	@Override
	@Transactional
	public void updateUser(User p) {
		
		userDAO.updateUser(p);
	}

	@Override
	@Transactional
	public List<User> listUsers() {
		
		return userDAO.listUsers();
	}

	@Override
	@Transactional
	public User getByUserName(String Username) {
		return userDAO.getByUserName(Username);
	}

	@Override
	@Transactional
	public void removeUser(String Username) {
		userDAO.removeUser(Username);
	}

}
