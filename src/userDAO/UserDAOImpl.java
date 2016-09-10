package userDAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pojo.User;
@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addUser(User p) {
	
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		
	}

	@Override
	public void updateUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
	}

	@Override
	public List<User> listUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<User> userList = session.createQuery("from User").list();
		return userList;
	}

	@Override
	public User getByUserName(String Username) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(session);
		User user = (User) session.get(User.class, Username);
		return user;
	}

	@Override
	public void removeUser(String Username) {
		Session session = this.sessionFactory.getCurrentSession();
		User user = (User)session.load(User.class,Username);
		if(null != user){
			session.delete(user);
		}
		
	}

	}
