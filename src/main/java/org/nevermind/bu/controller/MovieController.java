package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.MovieService;
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
        model.addAttribute("movie", movieService.getById(id));
        return "showMovie";
    }

    @GetMapping("/movies")
    public String getAllMovies(Model model) {
        model.addAttribute("movies", movieService.getAll());
        return "movieList";
    }

    @PostMapping("/newMovie")
    public String createMovie(@ModelAttribute Movie movie) {
        movieService.save(movie);
        return "redirect:movies";
    }

    /*@GetMapping("/edit/{id}")
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
        return "redirect:/movies";
    }*/

}
