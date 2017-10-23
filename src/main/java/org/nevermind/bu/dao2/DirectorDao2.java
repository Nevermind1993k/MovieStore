package org.nevermind.bu.dao2;

import org.nevermind.bu.entity.Director;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DirectorDao2 extends JpaRepository<Director, Integer> {

    Director findById(int id);

    Director findByName(String name);
}
