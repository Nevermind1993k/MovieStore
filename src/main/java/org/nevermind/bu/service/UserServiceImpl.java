package org.nevermind.bu.service;

import org.nevermind.bu.dao.interfaces.UserDao;
import org.nevermind.bu.dao2.UserDao2;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
//    private UserDao2 userDao;

    @Override
    public User getById(int id) {
        return userDao.getById(id);
//        return userDao.findById(id);
    }

    @Override
    public User getByName(String username) {
        return userDao.getByName(username);
//        return userDao.findByUsername(username);
    }

    @Override
    public Collection<User> getAll() {
        return userDao.getAll();
//        return userDao.findAll();
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    @Transactional
    public void delete(int id) {
        userDao.delete(userDao.getById(id));
//        userDao.delete(id);
    }

    @Override
    public void update(User user) {
        userDao.save(user);
    }
}

