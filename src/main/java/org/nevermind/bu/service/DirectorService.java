package org.nevermind.bu.service;

import org.nevermind.bu.entity.Director;

import java.util.List;

public interface DirectorService {

    Director getById(int id);

    List<Director> getAll();

    void save(Director director);

    void delete(int id);

    void update(Director director);
}
