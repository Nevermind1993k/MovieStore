package org.nevermind.bu.dao.interfaces;

import org.nevermind.bu.entity.Director;

import java.util.List;

public interface DirectorDao {

    void save(Director director);

    Director getDirectorById(int id);

    Director update(Director newDirector);

    List<Director> getAll();

    void delete(int id);

    void delete(String name);
}
