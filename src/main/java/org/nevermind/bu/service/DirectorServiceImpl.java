package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.DirectorDao;
import org.nevermind.bu.entity.Director;
import org.nevermind.bu.service.interfaces.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class DirectorServiceImpl implements DirectorService {

    @Autowired
    DirectorDao directorDao;


    @Override
    public Director getById(int id) {
        return directorDao.getById(id);
    }

    @Override
    public Collection<Director> getAll() {
        return directorDao.getAll();
    }

    @Override
    public void save(Director director) {
        directorDao.save(director);
    }

    @Override
    public void delete(int id) {
        directorDao.delete(directorDao.getById(id));
    }

    @Override
    public void update(Director director) {
        directorDao.update(director);
    }
}
