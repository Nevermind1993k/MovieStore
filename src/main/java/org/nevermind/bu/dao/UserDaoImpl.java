package org.nevermind.bu.dao;

import org.nevermind.bu.entity.User;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(User user) {

    }

    @Override
    public User getUserById(int id) {
        return null;
    }

    @Override
    public User update(User newUser) {
        return null;
    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void delete(String name) {

    }
}
