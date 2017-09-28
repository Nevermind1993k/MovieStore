package org.nevermind.bu.dao.interfaces;

import org.nevermind.bu.entity.Movie;

import java.util.List;

public interface MovieDao {

    void save(Movie movie);

    Movie getMovieById(int id);

    Movie update(Movie newMovie);

    List<Movie> getAll();

    void delete(int id);

    void delete(String name);

}
