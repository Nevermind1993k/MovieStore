package org.nevermind.bu.service.interfaces;

import org.nevermind.bu.entity.Movie;

import java.util.List;

public interface MovieService {

    Movie getById(int id);

    List<Movie> getAll();

    void save(Movie movie);

    void delete(int id);

    void update(Movie movie);
}
