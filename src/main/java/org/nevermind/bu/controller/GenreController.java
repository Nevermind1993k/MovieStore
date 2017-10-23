package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.Genre;
import org.nevermind.bu.service.interfaces.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/genre")
public class GenreController {

    @Autowired
    GenreService genreService;

    @GetMapping("/{id}")
    public String getById(@PathVariable("id") int id,
                          @RequestParam(value = "edit", required = false) boolean edit, Model model) {
        model.addAttribute("genre", genreService.getById(id));
        if (edit) {
            return "editGenre";
        }
        return "showGenre";
    }

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("genres", genreService.getAll());
        return "genreList";
    }

    @PostMapping("/newGenre")
    public String createGenre(@ModelAttribute Genre genre) {
        genreService.save(genre);
        return "redirect:all";
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable("id") int id, Model model) {
        System.out.println("id = " + id);
        model.addAttribute("genre", genreService.getById(id));
        return "editGenre";
    }

    @PostMapping("/update")
    public String editGenre(@ModelAttribute Genre genre, Model model) {
        genreService.update(genre);
        return "redirect:" + genre.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteGenre(@PathVariable("id") int id) {
        genreService.delete(id);
        return "redirect:/genre/all";
    }
}
