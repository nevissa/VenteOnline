package net.kzn.shoppingbackend.dao;

import java.util.List;

import net.kzn.shoppingbackend.dto.OrderDetail;
import net.kzn.shoppingbackend.dto.Product;

public interface OrderDetailDAO {
	
	List<OrderDetail> list() ;
	

}
