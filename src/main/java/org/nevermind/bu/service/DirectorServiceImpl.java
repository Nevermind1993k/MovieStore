package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.DirectorDao;
import org.nevermind.bu.entity.Director;
import org.nevermind.bu.service.interfaces.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class DirectorServiceImpl implements DirectorService {

    @Autowired
    DirectorDao directorDao;

    @Override
    public Director getById(int id) {
        return directorDao.getDirectorById(id);
    }

    @Override
    public List<Director> getAll() {
        return directorDao.getAll();
    }

    @Override
    public void save(Director director) {
        directorDao.save(director);
    }

    @Override
    public void delete(int id) {
        directorDao.delete(id);
    }

    @Override
    public void update(Director director) {
        directorDao.update(director);
    }
}
