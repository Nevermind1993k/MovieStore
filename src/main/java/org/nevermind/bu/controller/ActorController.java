package org.nevermind.bu.controller;

import org.nevermind.bu.entity.Actor;
import org.nevermind.bu.entity.Movie;
import org.nevermind.bu.service.interfaces.ActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/actor")
public class ActorController {

    @Autowired
    private ActorService actorService;

    @GetMapping("/{id}")
    public String getById(@PathVariable("id") int id,
                          @RequestParam(value = "edit", required = false) boolean edit, Model model) {
        model.addAttribute("actor", actorService.getById(id));
        if (edit) {
            return "editActor";
        }
        return "showActor";
    }

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("actors", actorService.getAll());
        return "actorList";
    }

    @PostMapping("/newActor")
    public String createActor(@ModelAttribute Actor actor) {
        actorService.save(actor);
        return "redirect:all";
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable("id") int id, Model model) {
        System.out.println("id = " + id);
        model.addAttribute("actor", actorService.getById(id));
        return "editActor";
    }

    @PostMapping("editActor")
    public String editActor(@ModelAttribute Actor actor, Model model) {
        actorService.update(actor);
        return "redirect:edit/" + actor.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteActor(@PathVariable("id") int id) {
        actorService.delete(id);
//        return "redirect:/actor/all";
        return "redirect:all";
    }


}
