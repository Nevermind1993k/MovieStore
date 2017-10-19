package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.MovieDao;
import org.nevermind.bu.dao2.MovieDao2;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.Collection;
import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    MovieDao2 movieDao;

    @Override
    public Movie getById(int id) {
        return movieDao.findById(id);
    }

    @Override
    public Movie getByName(String name) {
        return movieDao.findByName(name);
    }

    @Override
    public Page<Movie> getAll(Integer page, Integer size, String order) {
        if (StringUtils.isEmpty(order)) {
            order = "id";
        }
        Sort sort = new Sort(new Sort.Order(Sort.Direction.ASC, order));
        Pageable pageable = new PageRequest(page, size, sort);
        return movieDao.findAll(pageable);
    }

    @Override
    public Collection<Movie> getAll() {
        return movieDao.findAll();
    }

    @Override
    public void save(Movie movie) {
        movieDao.save(movie);
    }

    @Override
    @Transactional
    public void delete(int id) {
        movieDao.delete(id);
    }

    @Override
    public void update(Movie movie) {
        movieDao.save(movie);
    }
}

