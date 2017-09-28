package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Director;
import org.nevermind.bu.service.interfaces.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class DirectorController {

    @Autowired
    private DirectorService directorService;

    @GetMapping("/director/{id}")
    public String getDirectorById(@PathVariable("id") int id, Model model) {
        model.addAttribute("director", directorService.getById(id));
        return "showDirector";
    }

    @GetMapping("/directors")
    public String getAllDirectors(Model model) {
        model.addAttribute("directors", directorService.getAll());
        return "directorList";
    }

    @PostMapping("/newDirector")
    public String createDirector(@ModelAttribute Director director) {
        directorService.save(director);
        return "redirect:directors";
    }
}
