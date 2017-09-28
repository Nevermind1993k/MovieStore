package org.nevermind.bu.config;

import org.nevermind.bu.dao.*;
import org.nevermind.bu.dao.interfaces.ActorDao;
import org.nevermind.bu.dao.interfaces.DirectorDao;
import org.nevermind.bu.dao.interfaces.MovieDao;
import org.nevermind.bu.dao.interfaces.UserDao;
import org.nevermind.bu.service.*;
import org.nevermind.bu.service.interfaces.ActorService;
import org.nevermind.bu.service.interfaces.DirectorService;
import org.nevermind.bu.service.interfaces.MovieService;
import org.nevermind.bu.service.interfaces.UserService;
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

    @Bean
    public ActorService getActorService() {
        return new ActorServiceImpl();
    }

    @Bean
    public ActorDao getActorDao() {
        return new ActorDaoImpl();
    }

    @Bean
    public DirectorService getDirectorService() {
        return new DirectorServiceImpl();
    }

    @Bean
    public DirectorDao getDirectorDao() {
        return new DirectorDaoImpl();
    }
}
