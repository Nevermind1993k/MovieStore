package org.nevermind.bu.dao;

import org.nevermind.bu.dao.interfaces.UserDao;
import org.nevermind.bu.entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    @Transactional
    public void save(User user) {
        entityManager.persist(user);
    }

    @Override
    public User getById(int id) {
        return entityManager.createQuery("SELECT u FROM User u WHERE id=:id", User.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    public User getByName(String name) {
        return entityManager.createQuery("SELECT u FROM User u WHERE name=:name", User.class)
                .setParameter("name", name)
                .getSingleResult();
    }

    @Override
    public List<User> getAll() {
        return entityManager.createQuery("SELECT u FROM User u", User.class)
                .getResultList();
    }

    @Override
    @Transactional
    public void update(User user) {
        entityManager.merge(user);
    }

    @Override
    public void delete(User user) {
        entityManager.remove(user);
    }
}

