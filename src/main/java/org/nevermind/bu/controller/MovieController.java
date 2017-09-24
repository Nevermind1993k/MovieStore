package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.entity.User;
import org.nevermind.bu.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class MovieController {

    @Autowired
    private MovieService movieService;

    @GetMapping("/movie/{id}")
    public String getMovieById(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", movieService.getById(id));
        return "showMovie";
    }

    @GetMapping("/movies")
    public String getAllMovies(Model model) {
        model.addAttribute("movies", movieService.getAll());
        return "movieList";
    }

    @PostMapping("/newMovie")
    public String createUser(@ModelAttribute Movie movie) {
        movieService.save(movie);
        return "redirect:movies";
    }

}
