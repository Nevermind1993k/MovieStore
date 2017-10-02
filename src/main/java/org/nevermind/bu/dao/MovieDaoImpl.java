package org.nevermind.bu.dao;

import org.nevermind.bu.dao.interfaces.MovieDao;
import org.nevermind.bu.entity.Movie;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class MovieDaoImpl implements MovieDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(Movie movie) {
        entityManager.persist(movie);
    }

    @Override
    public Movie getById(int id) {
        return entityManager.createQuery("SELECT m FROM Movie m WHERE id=:id", Movie.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    @Transactional
    public void update(Movie newMovie) {
        entityManager.merge(newMovie);
    }

    @Override
    public void delete(Movie movie) {
        entityManager.remove(movie);
    }

    @Override
    public List<Movie> getAll() {
        return entityManager.createQuery("SELECT m FROM Movie m", Movie.class)
                .getResultList();
    }
}
