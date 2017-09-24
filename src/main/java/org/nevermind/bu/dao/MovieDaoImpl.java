package org.nevermind.bu.dao;

import org.nevermind.bu.entity.Movie;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class MovieDaoImpl implements MovieDao {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    @Transactional
    public void save(Movie movie) {
        entityManager.persist(movie);
    }

    @Override
    public Movie getMovieById(int id) {
        return entityManager.createQuery("SELECT m FROM Movie m WHERE id=:id", Movie.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    @Transactional
    public Movie update(Movie newMovie) {
        return entityManager.merge(newMovie);
    }

    @Override
    public List<Movie> getAll() {
        return entityManager.createQuery("SELECT m FROM Movie m", Movie.class)
                .getResultList();
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void delete(String name) {

    }
}
