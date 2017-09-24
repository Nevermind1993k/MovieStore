package org.nevermind.bu.config;

import org.nevermind.bu.dao.MovieDao;
import org.nevermind.bu.dao.MovieDaoImpl;
import org.nevermind.bu.dao.UserDao;
import org.nevermind.bu.dao.UserDaoImpl;
import org.nevermind.bu.service.MovieService;
import org.nevermind.bu.service.MovieServiceImpl;
import org.nevermind.bu.service.UserService;
import org.nevermind.bu.service.UserServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringConfig {

    @Bean
    public UserService getUserService() {
        return new UserServiceImpl();
    }

    @Bean
    public UserDao getUserDao() {
        return new UserDaoImpl();
    }

    @Bean
    public MovieService getMovieService() {
        return new MovieServiceImpl();
    }

    @Bean
    public MovieDao getMovieDao() {
        return new MovieDaoImpl();
    }
}
