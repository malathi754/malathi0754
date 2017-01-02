package com.toy.toyworld.cart;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;
 
	public SessionFactory getSessionFactory() {
		return sessionFactory.getCurrentSession().getSessionFactory();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public Cart getCartById(int cartId) {
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where ID = :id").setInteger("id", cartId).list();
		
		if( l.size() > 0 )
			return (Cart)l.get(0);
		else
			return null;
		
	}

	@Transactional
	public void update(Cart cart) {
		sessionFactory.getCurrentSession().update(cart);
	}

	@Transactional
	public void add(Cart cart)
	{
		sessionFactory.getCurrentSession().save(cart);
	}

	@Transactional
	public void delete(int i) {
		sessionFactory.getCurrentSession().createQuery("delete from Cart as i where i.ID = :id").setInteger("id", i).executeUpdate();
	}

	@Transactional
	public void deleteByProductId(int pid) {
		sessionFactory.getCurrentSession().createQuery("delete from Cart as i where i.ProductId = :id").setInteger("id", pid).executeUpdate();
	}

	@Transactional
	public List<Cart> getAllItems() {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	@Transactional
	public Cart getCartByUsername(String Username) {
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where Username = :Username").setString("Username", Username).list();
		
		if( l.size() > 0 )
			return (Cart)l.get(0);
		else
			return null;
	}

	@Transactional
	public String checkUsername(String Username){
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where Username = :Username").setString("Username", Username).list();
		
		if( l.size() == 0 )
			return "success";
		else
			return "failure";
	}
	
	
}
