package org.nevermind.bu.service.interfaces;

import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.entity.User;

import java.util.List;

public interface UserService extends IService<User> {
    User getByName(String name);
}
