package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.CartDao;
import org.nevermind.bu.dao2.CartDao2;
import org.nevermind.bu.entity.Cart;
import org.nevermind.bu.service.interfaces.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    CartDao2 cartDao;

    @Override
    public Cart getById(int id) {
        return cartDao.findById(id);
    }

    @Override
    public Collection<Cart> getAll() {
        return cartDao.findAll();
    }

    @Override
    public void save(Cart cart) {
        cartDao.save(cart);
    }

    @Override
    @Transactional
    public void delete(int id) {
        cartDao.delete(id);
    }

    @Override
    public void update(Cart cart) {
        cartDao.save(cart);
    }

    @Override
    public void buyMovie(int id) {
        cartDao.delete(id);
    }
}
