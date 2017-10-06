package org.nevermind.bu.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.nevermind.bu.config.JpaConfigTest;
import org.nevermind.bu.config.SpringConfig;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Optional;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {JpaConfigTest.class, SpringConfig.class})
public class UserServiceImplTest {

    @Autowired
    private UserService userService;

    @Test
    public void getById() throws Exception {
        User user = getTestUser("testuser123");
        userService.save(user);
        ArrayList<User> all = (ArrayList<User>) userService.getAll();
        Optional<User> testuser123 = all.stream().filter(u -> u.getUsername().equals("testuser123")).findFirst();
        User user1 = testuser123.get();
        User userServiceById = userService.getById(user1.getId());
        assertNotNull(userServiceById);
        assertEquals("testuser123", userServiceById.getUsername());
    }

    private User getTestUser(String name) {
        User user = new User();
        user.setUsername(name);
        user.setEmail("testmail@gmail.com");
        return user;
    }

    @Test
    public void getByName() throws Exception {
    }

    @Test
    public void getAll() throws Exception {
    }

    @Test
    public void save() throws Exception {
    }

    @Test
    public void delete() throws Exception {
    }

    @Test
    public void update() throws Exception {
    }

}
