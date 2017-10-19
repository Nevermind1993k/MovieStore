package org.nevermind.bu.service.interfaces;

import org.nevermind.bu.entity.Movie;
import org.springframework.data.domain.Page;

import java.util.List;

public interface MovieService extends IService<Movie> {

    Movie getByName(String name);

    Page<Movie> getAll(Integer page, Integer size, String order);
}
