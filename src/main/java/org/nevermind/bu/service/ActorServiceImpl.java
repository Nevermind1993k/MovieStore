package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.ActorDao;
import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.ActorService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ActorServiceImpl implements ActorService {

    @Autowired
    ActorDao actorDao;

    @Override
    public Actor getById(int id) {
        return actorDao.getActorById(id);
    }

    @Override
    public List<Actor> getAll() {
        return actorDao.getAll();
    }

    @Override
    public void save(Actor actor) {
        actorDao.save(actor);
    }

    @Override
    public void delete(int id) {
        actorDao.delete(id);
    }

    @Override
    public void update(Actor actor) {
        actorDao.update(actor);
    }

    @Override
    public void addMovie(Movie movie) {

    }
}
