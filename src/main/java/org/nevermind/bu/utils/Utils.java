package org.nevermind.bu.utils;

import org.nevermind.bu.entity.User;

import java.util.ArrayList;
import java.util.List;

public class Utils {

    public static List<String> validate(User user) {
        List<String> result = new ArrayList<>();
        if (user.getUsername().length() < 4) {
            result.add("Name must be more or equals then 4 symbols");
        }
        return result;
    }
}
