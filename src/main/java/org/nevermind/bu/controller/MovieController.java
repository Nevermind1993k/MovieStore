package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

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
    public String getAll(Model model,
                         @RequestParam(value = "page", required = false) Integer page,
                         @RequestParam(value = "size", required = false) Integer size,
                         @RequestParam(value = "order", required = false) String order) {
        int totalPages = 0;
        if (page != null) {
            size = 10;
            Page<Movie> pages = movieService.getAll(page, size, order);
            totalPages = pages.getTotalPages();
            model.addAttribute("total", totalPages);
            model.addAttribute("movies", pages.getContent());
        } else if (!StringUtils.isEmpty(order)) {
            model.addAttribute("movies", movieService.getAll(0, 100, order).getContent());
        } else {
            Collection<Movie> all = movieService.getAll();
            model.addAttribute("movies", all);
            totalPages = all.size() / 2;
        }
        List<Integer> pagesCount = new ArrayList<>();
        for (int i = 0; i < totalPages; i++) {
            pagesCount.add(i);
        }
        model.addAttribute("pages", pagesCount);
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

    @PostMapping("/update")
    public String editMovie(@ModelAttribute Movie movie, Model model) {
        movieService.update(movie);
        return "redirect:" + movie.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteMovie(@PathVariable("id") int id) {
        movieService.delete(id);
//        return "redirect:/movies";
        return "redirect:/movie/all";

    }

}
