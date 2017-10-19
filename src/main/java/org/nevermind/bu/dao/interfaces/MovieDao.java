package org.nevermind.bu.dao.interfaces;

import org.nevermind.bu.entity.Movie;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface MovieDao extends IDAO<Movie> {
    Page<Movie> getAll(Pageable pageable);
}
