package org.nevermind.bu.controller;


import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.interfaces.UserService;
import org.nevermind.bu.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private UserService userService;

    @GetMapping("/create")
    public String createPage(@RequestParam(value = "message", required = false) String message, Model model) {
        if (message != null) {
            model.addAttribute("message", message);
        }
        return "createUserForm";
    }

    @PostMapping("/create")
    public String createUser(@ModelAttribute User user, Model model) {
        List<String> errors = Utils.validate(user);
        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            return "createUserForm";
        }
        userService.save(user);
        return "redirect:/";
//        return "createUserForm";
    }

    @GetMapping("/")
    public String index(Locale locale) {
        return "index";
    }

    @GetMapping("/loginPage")
    public String loginPage() {
        return "loginPage";
    }

    @GetMapping("/registerPage")
    public String registerPage() {
        return "registerPage";
    }

    @GetMapping("/error_page")
    public String errorPage() {
        return "errorPage";
    }

    @GetMapping("/infoPage")
    public String infoPage() {
        return "infoPage";
    }



}
