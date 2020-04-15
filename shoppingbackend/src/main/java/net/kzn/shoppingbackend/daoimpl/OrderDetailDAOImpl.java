package net.kzn.shoppingbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import net.kzn.shoppingbackend.dao.OrderDetailDAO;
import net.kzn.shoppingbackend.dto.OrderDetail;
import net.kzn.shoppingbackend.dto.Product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

@Repository("OrderDetailDAO")
@Transactional
public class OrderDetailDAOImpl implements OrderDetailDAO{
	@Autowired
	private SessionFactory sessionFactory;
	


	@Override
	public List<OrderDetail> list() {
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM OrderDetail" , OrderDetail.class)
						.getResultList();

					

	}
	
	
	
	
	
	
	

}
