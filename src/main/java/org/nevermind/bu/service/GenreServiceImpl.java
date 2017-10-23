package org.nevermind.bu.service;

import org.nevermind.bu.dao2.GenreDao2;
import org.nevermind.bu.entity.Genre;
import org.nevermind.bu.service.interfaces.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;

@Service
public class GenreServiceImpl implements GenreService {

    @Autowired
    GenreDao2 genreDao;

    @Override
    public Genre getById(int id) {
        return genreDao.findById(id);
    }

    @Override
    public Collection<Genre> getAll() {
        return genreDao.findAll();
    }

    @Override
    public void save(Genre genre) {
        genreDao.save(genre);
    }

    @Override
    @Transactional
    public void delete(int id) {
        genreDao.delete(id);
    }

    @Override
    public void update(Genre genre) {
        genreDao.save(genre);
    }
}
