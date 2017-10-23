package org.nevermind.bu.dao2;

import org.nevermind.bu.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao2 extends JpaRepository<User, Integer> {

    User findById(int id);

    User findByUsername(String userName);

}
