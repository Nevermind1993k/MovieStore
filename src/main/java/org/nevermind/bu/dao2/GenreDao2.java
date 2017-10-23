package org.nevermind.bu.dao2;

import org.nevermind.bu.entity.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenreDao2 extends JpaRepository<Genre, Integer> {

    Genre findById(int id);

    Genre findByName(String name);
}
