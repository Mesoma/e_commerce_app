// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  const SizedBox(height: 10,),

                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index){
                            Shoe individualShoe = value.getUserCart()[index];

                            return CartItem(
                              shoe: individualShoe,
                            );
                          }
                      )
                  )
                ],
              ),
            )
    );
  }
}