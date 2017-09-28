package org.nevermind.bu.service.interfaces;

import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.entity.User;

import java.util.List;

public interface ActorService {

    Actor getById(int id);

    List<Actor> getAll();

    void save(Actor actor);

    void delete(int id);

    void update(Actor actor);

    void addMovie(Movie movie);
}
