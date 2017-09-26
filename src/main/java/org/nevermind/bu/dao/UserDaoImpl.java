package org.nevermind.bu.dao;

import org.nevermind.bu.entity.Movie;
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
        entityManager.persist(user);
    }

    @Override
    public User getUserById(int id) {
        return entityManager.createQuery("SELECT u FROM User u WHERE id=:id", User.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    @Transactional
    public User update(User newUser) {
        return entityManager.merge(newUser);
    }

    @Override
    public List<User> getAll() {
        return entityManager.createQuery("SELECT u FROM User u", User.class)
                .getResultList();
    }

    @Override
    @Transactional
    public void delete(int id) {
        entityManager.createQuery("DELETE User WHERE id=:id")
                .setParameter("id", id).
                executeUpdate();
    }

    @Override
    public void delete(String name) {

    }

    @Override
    @Transactional
    public void addMovieToUser(Movie movie) {
//        entityManager.createQuery("");
//        "select c from Category c join fetch c.events where c.parentCategory.categoryId = 1"
//        user.addMovieToList(movie);
        entityManager.merge(movie);
    }
}
