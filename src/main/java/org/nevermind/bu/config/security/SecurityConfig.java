package org.nevermind.bu.config.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("admin").password("1234").roles("ADMIN");
        auth.inMemoryAuthentication().withUser("user").password("1234").roles("USER");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("movies/**").access("hasRole('USER') and hasRole('ADMIN')")
                .antMatchers("/**", "/user/**").access("hasRole('ADMIN')")
                .and().formLogin()
                .loginPage("/loginPage").permitAll()
                .usernameParameter("username")
                .passwordParameter("password")
                .and().exceptionHandling().accessDeniedPage("/error_page");
    }
}
