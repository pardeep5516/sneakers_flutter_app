import 'package:flutter/material.dart';
import 'package:sneakers/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Flex',
        price: "334",
        imagePath: "assert/images/shoes_2.jpg",
        description: "the best shoes for running"),
    Shoe(
        name: "Nike Air Max 270",
        price: "130",
        imagePath: "assert/images/shoes_1.jpg",
        description: "Cool shoes for running"),
    Shoe(
        name: "Nike Air Max 370",
        price: "230",
        imagePath: "assert/images/shoes_3.jpg",
        description: "Cool shoes for running"),
    Shoe(
        name: "Nike Air Max 270",
        price: "130",
        imagePath: "assert/images/shoes_2.jpg",
        description: "Cool shoes for running"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeShop() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
