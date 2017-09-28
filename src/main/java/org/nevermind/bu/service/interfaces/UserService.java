package org.nevermind.bu.service.interfaces;

import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.entity.User;

import java.util.List;

public interface UserService {

    User getById(int id);

    List<User> getAll();

    void save(User user);

    void delete(int id);

    void update(User user);

    void addMovie(Movie movie);
}
