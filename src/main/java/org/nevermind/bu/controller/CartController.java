package org.nevermind.bu.controller;

import org.nevermind.bu.service.interfaces.CartService;
import org.nevermind.bu.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;

//    @Autowired
//    private UserService userService;

    @GetMapping("/all")
    public String getAll(Model model) {
        model.addAttribute("cart", cartService.getAll());
        return "cartList";
    }

/*    @GetMapping("/{id}")
    public String getById(@PathVariable("id") int id,
                          @RequestParam(value = "edit", required = false) boolean edit, Model model) {
        model.addAttribute("cart", cartService.getById(id));
        if (edit) {
            return "editCart";
//            return "redirect:" + userService.getById(id) + "?edit=false";

        } else {
            return "showCart";
        }
    }*/



    /*@GetMapping("/buyMovie")
    public String buyMovie(@PathVariable("id") int id){
        cartService.buyMovie(id);
        return "/cart/all";
    }*/
}
