package org.nevermind.bu.controller;

import org.nevermind.bu.service.interfaces.ActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/actor")
public class ActorController {

    @Autowired
    private ActorService actorService;

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("actors", actorService.getAll());
        return "actorList";
    }


}
