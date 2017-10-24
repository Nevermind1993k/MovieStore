package org.nevermind.bu.controller;

import org.apache.log4j.Logger;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.interfaces.UserService;
import org.nevermind.bu.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/{id}")
    public String getById(@PathVariable("id") int id,
                          @RequestParam(value = "edit", required = false) boolean edit, Model model) {
        model.addAttribute("user", userService.getById(id));
        if (edit) {
            return "editUser";
//            return "redirect:" + userService.getById(id) + "?edit=false";

        } else {
            return "showUser";
        }
    }

    /*@GetMapping("/somelink/{id}")
    public String getByName(@PathVariable("id") int id, Model model) {
        *//*if (principal != null) {
            userService.getByName(principal.getName());
        }*//*
        User user123 = userService.getById(id);
        model.addAttribute("user", userService.getByName(user123.getUsername()));
        return "showUser";
    }*/

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("users", userService.getAll());
        return "userList";
    }

    @GetMapping("/create")
    public String createPage(@RequestParam(value = "message", required = false) String message, Model model) {
        if (message != null) {
            model.addAttribute("message", message);
        }
        return "createUserForm";
    }

    @PostMapping("/create")
    public String createUser(@ModelAttribute User user, Model model) {
        List<String> errors = Utils.validateUser(user);
        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            return "createUserForm";
        }
        userService.save(user);
        return "redirect:all";
//        return "createUserForm";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute User user) {
        userService.update(user);
        return "redirect:" + user.getId();// + "?edit=false";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") int id) {
        userService.delete(id);
        return "redirect:/user/all";
    }
}
