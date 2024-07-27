// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/about_page.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;


  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
     const ShopPage(),
     const CartPage(),
     const AboutPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                icon: const Icon(Icons.menu, color: Colors.black,),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
            );
          }
        ),
        backgroundColor: Colors.transparent,
      ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                      child: Icon (
                          Icons.shop,
                          color: Colors.white,
                          size:48
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white,),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => HomePage(),
                          )
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white,),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context) => AboutPage(),
                        )
                        );
                      },
                    ),
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white,),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
        body: _pages[_selectedIndex],
    );
  }
}
