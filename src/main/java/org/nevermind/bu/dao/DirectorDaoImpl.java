package org.nevermind.bu.dao;

import org.nevermind.bu.dao.interfaces.DirectorDao;
import org.nevermind.bu.entity.Director;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class DirectorDaoImpl implements DirectorDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(Director director) {
        entityManager.persist(director);
    }

    @Override
    public Director getById(int id) {
        return entityManager.createQuery("SELECT d FROM Director d WHERE id=:id", Director.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    @Transactional
    public void update(Director newDirector) {
        entityManager.merge(newDirector);
    }

    @Override
    public void delete(Director director) {
        entityManager.remove(director);
    }

    @Override
    public List<Director> getAll() {
        return entityManager.createQuery("SELECT d FROM Director d", Director.class)
                .getResultList();
    }
}
