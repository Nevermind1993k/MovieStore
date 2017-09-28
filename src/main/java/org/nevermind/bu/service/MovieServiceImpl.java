package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.MovieDao;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.MovieService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class MovieServiceImpl implements MovieService {

    @Autowired
    MovieDao movieDao;

    @Override
    public Movie getById(int id) {
        return movieDao.getMovieById(id);
    }

    @Override
    public List<Movie> getAll() {
        return movieDao.getAll();
    }

    @Override
    public void save(Movie movie) {
        movieDao.save(movie);
    }

    @Override
    public void delete(int id) {
        movieDao.delete(id);
    }

    @Override
    public void update(Movie movie) {
        movieDao.update(movie);
    }
}
