package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.Director;
import org.nevermind.bu.service.interfaces.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/director")
public class DirectorController {

    @Autowired
    private DirectorService directorService;

    @GetMapping("/{id}")
    public String getById(@PathVariable("id") int id,
                          @RequestParam(value = "edit", required = false) boolean edit, Model model) {
        model.addAttribute("director", directorService.getById(id));
        if (edit) {
            return "editDirector";
        }
        return "showDirector";
    }

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("directors", directorService.getAll());
        return "directorList";
    }

    @PostMapping("/newDirector")
    public String createDirector(@ModelAttribute Director director) {
        directorService.save(director);
        return "redirect:all";
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable("id") int id, Model model) {
        System.out.println("id = " + id);
        model.addAttribute("director", directorService.getById(id));
        return "editDirector";
    }

    @PostMapping("editDirector")
    public String editDirector(@ModelAttribute Director director, Model model) {
        directorService.update(director);
        return "redirect:edit/" + director.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteDirector(@PathVariable("id") int id) {
        directorService.delete(id);
//        return "redirect:/director/all";
        return "redirect:all";
    }

}
