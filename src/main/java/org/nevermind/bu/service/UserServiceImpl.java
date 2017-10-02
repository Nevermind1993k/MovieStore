package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.UserDao;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getById(int id) {
        return userDao.getById(id);
    }

    @Override
    public User getByName(String name) {
        return userDao.getByName(name);
    }

    @Override
    public Collection<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    @Transactional
    public void delete(int id) {
        userDao.delete(userDao.getById(id));
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }
}

