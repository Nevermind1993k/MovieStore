package org.nevermind.bu.dao.interfaces;

import org.nevermind.bu.entity.Actor;

import java.util.List;

public interface ActorDao {

    void save(Actor actor);

    Actor getActorById(int id);

    Actor update(Actor newActor);

    List<Actor> getAll();

    void delete(int id);

    void delete(String name);
}
