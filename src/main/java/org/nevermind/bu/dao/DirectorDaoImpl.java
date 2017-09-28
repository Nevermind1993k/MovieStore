package org.nevermind.bu.dao;

import org.nevermind.bu.dao.interfaces.DirectorDao;
import org.nevermind.bu.entity.Director;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class DirectorDaoImpl implements DirectorDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void save(Director director) {
        entityManager.persist(director);
    }

    @Override
    public Director getDirectorById(int id) {
        return entityManager.createQuery("SELECT d FROM Director d WHERE id=:id", Director.class)
                .setParameter("id", id)
                .getSingleResult();
    }

    @Override
    @Transactional
    public Director update(Director newDirector) {
        return entityManager.merge(newDirector);
    }

    @Override
    public List<Director> getAll() {
        return entityManager.createQuery("SELECT d FROM Director d", Director.class)
                .getResultList();
    }

    @Override
    public void delete(int id) {
        entityManager.createQuery("DELETE Director WHERE id=:id")
                .setParameter("id", id).
                executeUpdate();
    }

    @Override
    public void delete(String name) {

    }

}
