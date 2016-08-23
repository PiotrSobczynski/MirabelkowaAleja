package pl.com.mirabelkowa;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import pl.com.mirabelkowa.User;

@Repository
public class UserDAOImpl implements UserDAO{
	
	private SessionFactory sessionFactory;
	
	public void addUser(User user)
	{
		sessionFactory.getCurrentSession().save(user);
	}
	public List<User> listUser() {
		 
        return sessionFactory.getCurrentSession().createQuery("from User order by id").list();
    }
 
    public void removeUser(int id) {
        User user = (User) sessionFactory.getCurrentSession().load(
                User.class, id);
        if (null != user) {
            sessionFactory.getCurrentSession().delete(user);
        }
 
    }
    public User getUser(int id) {
    	
    	return (User)sessionFactory.getCurrentSession().get(User.class, id);
    }
    
  public void editUser(User user) {
    	
    	sessionFactory.getCurrentSession().update(user);
    }
	

}
