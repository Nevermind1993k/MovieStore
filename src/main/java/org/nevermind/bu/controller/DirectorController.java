package org.nevermind.bu.controller;

import org.nevermind.bu.service.interfaces.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/director")
public class DirectorController {

    @Autowired
    private DirectorService directorService;

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("directors", directorService.getAll());
        return "directorList";
    }
}
