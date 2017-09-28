package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.UserDao;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User getById(int id) {
        return userDao.getUserById(id);
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void addMovie(Movie movie) {
        userDao.addMovieToUser(movie);
    }


}
