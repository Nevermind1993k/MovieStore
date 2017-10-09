package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private MovieService movieService;

    @GetMapping("/{id}")
    public String getById(@PathVariable("id") int id,
                          @RequestParam(value = "edit", required = false) boolean edit, Model model) {
        model.addAttribute("movie", movieService.getById(id));
        if (edit) {
            return "editMovie";
        }
        return "showMovie";
    }

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("movies", movieService.getAll());
        return "movieList";
    }

    @PostMapping("/newMovie")
    public String createMovie(@ModelAttribute Movie movie) {
        movieService.save(movie);
//        return "redirect:movie/all";
        return "redirect:all";
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable("id") int id, Model model) {
        System.out.println("id = " + id);
        model.addAttribute("movie", movieService.getById(id));
        return "editMovie";
    }

    @PostMapping("editMovie")
    public String editMovie(@ModelAttribute Movie movie, Model model) {
        movieService.update(movie);
        return "redirect:edit/" + movie.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteMovie(@PathVariable("id") int id) {
        movieService.delete(id);
//        return "redirect:/movies";
        return "redirect:all";

    }

}
