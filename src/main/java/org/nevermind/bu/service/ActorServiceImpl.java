package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.ActorDao;
import org.nevermind.bu.dao2.ActorDao2;
import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.ActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;

@Service
public class ActorServiceImpl implements ActorService {

    @Autowired
    ActorDao2 actorDao;

    @Override
    public Actor getById(int id) {
        return actorDao.findById(id);
    }


    @Override
    public Collection<Actor> getAll() {
        return actorDao.findAll();
    }

    @Override
    public void save(Actor actor) {
        actorDao.save(actor);
    }

    @Override
    @Transactional
    public void delete(int id) {
        actorDao.delete(id);
    }

    @Override
    public void update(Actor actor) {
        actorDao.save(actor);
    }
}

