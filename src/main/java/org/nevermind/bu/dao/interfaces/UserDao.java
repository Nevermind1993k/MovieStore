package org.nevermind.bu.dao.interfaces;

import org.nevermind.bu.entity.User;

public interface UserDao extends IDAO<User> {

    User getByName(String name);
}
