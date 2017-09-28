package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.service.interfaces.ActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class ActorController {

    @Autowired
    private ActorService actorService;

    @GetMapping("/actor/{id}")
    public String getActorById(@PathVariable("id") int id, Model model) {
        model.addAttribute("actor", actorService.getById(id));
        return "showActor";
    }

    @GetMapping("/actors")
    public String getAllActors(Model model) {
        model.addAttribute("actors", actorService.getAll());
        return "actorList";
    }

    @PostMapping("/newActor")
    public String createActor(@ModelAttribute Actor actor) {
        actorService.save(actor);
        return "redirect:actors";
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
