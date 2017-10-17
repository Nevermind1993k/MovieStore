package org.nevermind.bu.dao;


import org.nevermind.bu.dao.interfaces.CartDao;
import org.nevermind.bu.entity.Cart;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;

@Repository
public class CartDaoImpl implements CartDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(Cart cart) {
        entityManager.persist(cart);
    }

    @Override
    public Cart getById(int id) {
        return entityManager.createQuery("SELECT c FROM Cart c WHERE id=:id", Cart.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    public Collection<Cart> getAll() {
        return entityManager.createQuery("SELECT c FROM Cart c", Cart.class)
                .getResultList();
    }

    @Override
    @Transactional
    public void update(Cart newCart) {
        entityManager.merge(newCart);
    }

    @Override
    public void delete(Cart cart) {
        entityManager.remove(cart);
    }
}
