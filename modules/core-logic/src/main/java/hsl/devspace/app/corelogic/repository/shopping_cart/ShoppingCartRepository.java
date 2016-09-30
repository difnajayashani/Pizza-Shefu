package hsl.devspace.app.corelogic.repository.shopping_cart;

import hsl.devspace.app.corelogic.domain.ShoppingCart;

/**
 * Created by hsenid on 9/23/16.
 */
public interface ShoppingCartRepository {
    int add(ShoppingCart shoppingCart);
    int delete(int id);
    int countPerCustomer(String customerUsername);
    int countPerGuest(String mobile);
    int countTotalCustomerCarts();
    int countTotalGuestCarts();

}
