package org.nevermind.bu.config;

import org.nevermind.bu.dao.*;
import org.nevermind.bu.service.*;
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
}
