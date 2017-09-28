package org.nevermind.bu.dao;

import org.nevermind.bu.dao.interfaces.ActorDao;
import org.nevermind.bu.entity.Actor;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class ActorDaoImpl implements ActorDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(Actor actor) {
        entityManager.persist(actor);
    }

    @Override
    public Actor getActorById(int id) {
        return entityManager.createQuery("SELECT a FROM Actor a WHERE id=:id", Actor.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    @Transactional
    public Actor update(Actor newActor) {
        return entityManager.merge(newActor);
    }

    @Override
    public List<Actor> getAll() {
        return entityManager.createQuery("SELECT a FROM Actor a", Actor.class)
                .getResultList();
    }

    @Override
    @Transactional
    public void delete(int id) {
        entityManager.createQuery("DELETE Actor WHERE id=:id")
                .setParameter("id", id).
                executeUpdate();
    }

    @Override
    public void delete(String name) {

    }
}
