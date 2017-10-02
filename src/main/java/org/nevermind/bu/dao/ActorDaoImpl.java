package org.nevermind.bu.dao;

import org.nevermind.bu.dao.interfaces.ActorDao;
import org.nevermind.bu.entity.Actor;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ActorDaoImpl implements ActorDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(Actor actor) {
        entityManager.persist(actor);
    }

    @Override
    public Actor getById(int id) {
        return entityManager.createQuery("SELECT a FROM Actor a WHERE id=:id", Actor.class)
                .setParameter("id", id)
                .getSingleResult();
    }


    @Override
    @Transactional
    public void update(Actor newActor) {
        entityManager.merge(newActor);
    }

    @Override
    public void delete(Actor actor) {
        entityManager.remove(actor);
    }

    @Override
    public List<Actor> getAll() {
        return entityManager.createQuery("SELECT a FROM Actor a", Actor.class)
                .getResultList();
    }
}

