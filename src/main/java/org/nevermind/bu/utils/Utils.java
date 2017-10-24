package org.nevermind.bu.utils;

import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.UserServiceImpl;
import org.nevermind.bu.service.interfaces.UserService;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.List;
@Validated
public class Utils {

    public static List<String> validateUser(User user) {

        UserService userService = new UserServiceImpl();

        List<String> result = new ArrayList<>();
        if (user.getUsername().length() < 4) {
            result.add("Name must be more or equals then 4 symbols");
        }
        if(user.getPassword().equals("")) {
            result.add("You need to enter password");
        }
//            System.out.println(userService.getAll());
        return result;
    }
    public static List<String> validateActor(Actor actor) {
        List<String> result = new ArrayList<>();

            if (actor.getDateOfBirth().equals(null)) {
                result.add("You need to enter Date Of Birth");
            }
            if (actor.getName().length()<4) {
                result.add("Name must be more or equals then 4 symbols");
            }
        return result;
    }
}
