import '../models/Cart.dart';

class CartService{
  static var cartItems=<Cart>[];

  static CartService _singleton = CartService._internal();

  factory CartService(){
    return _singleton;
  }

  CartService._internal();

  static void addToCart(Cart item){
    cartItems.add(item);
  }

  static void removeFromCart(Cart item) {
    cartItems.remove(item);
  }

  static List<Cart> getCart() {
    return cartItems;
  }
}