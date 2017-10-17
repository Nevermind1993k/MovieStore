package org.nevermind.bu.dao2;

import org.nevermind.bu.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartDao2 extends JpaRepository<Cart, Integer> {

    Cart findById(int id);

    void deleteById(int id);
}
