package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.MovieDao;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    MovieDao movieDao;

    @Override
    public Movie getById(int id) {
        return movieDao.getById(id);
    }

    @Override
    public Collection<Movie> getAll() {
        return movieDao.getAll();
    }

    @Override
    public void save(Movie movie) {
        movieDao.save(movie);
    }

    @Override
    public void delete(int id) {
        movieDao.delete(movieDao.getById(id));
    }

    @Override
    public void update(Movie movie) {
        movieDao.update(movie);
    }
}

