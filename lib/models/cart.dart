import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(name: "Vectors",
        price: "10,000",
        imagePath: "lib/images/new1.jpg",
        description: "Our new release! Instant fibre Vectors. Never affected by heat or heavy impact. Buy these if you jump bus everyday"
    ),
    Shoe(name: "Jogflow 100",
        price: "17,000",
        imagePath: "lib/images/Jogflow 100.jpg",
        description: "Our custom made water resistant Joggers, built to withstand the highest shege pro max"
    ),
    Shoe(name: "Cans",
        price: "10,000",
        imagePath: "lib/images/Cans.jpg",
        description: "Canvas shoes that can be used for minimal sports like looking for fuel"
    ),
    Shoe(name: "Crocs",
        price: "5,000",
        imagePath: "lib/images/Crocs.jpg",
        description: "Useful cover crocs for your everyday waka"
    ),
    Shoe(name: "Wings",
    price: "7,000",
    imagePath: "lib/images/new2.jpg",
    description: "Starter pack wings for dodgin SARS"
    )
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}