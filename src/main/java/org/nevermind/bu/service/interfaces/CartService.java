package org.nevermind.bu.service.interfaces;

import org.nevermind.bu.entity.Cart;

public interface CartService extends IService<Cart> {

    void buyMovie(int id);
}
