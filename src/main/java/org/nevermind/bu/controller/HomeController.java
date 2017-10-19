package org.nevermind.bu.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
@RequestMapping("/")
public class HomeController {

    /*@GetMapping("/")
    public String index() {
        return "index";
    }*/

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
