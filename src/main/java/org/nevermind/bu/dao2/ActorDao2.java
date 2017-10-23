package org.nevermind.bu.dao2;

import org.nevermind.bu.entity.Actor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ActorDao2 extends JpaRepository<Actor, Integer> {

    Actor findById(int id);

    Actor findByName(String name);
}
