// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                    'lib/images/nike logo.png',
                    height: 240,
                ),
              ),

              const SizedBox(height: 10),

              //title
              Text(
                "Just Run It",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 50),

              //subtitle
              Text(
                "Premium Sneakers Just For You",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),
                  textAlign: TextAlign.center,
              ),

              const SizedBox(height: 50),


              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                    MaterialPageRoute(
                        builder: (context)=> HomePage()
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21
                        ),
                    ),
                  )

                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
