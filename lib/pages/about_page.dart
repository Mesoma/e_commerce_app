// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
          child: Column(
            children: [
              Image.asset('lib/images/nike.png',scale: 2.1,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(style: TextStyle(wordSpacing: 5),
                    "About me, I be your number one app for sneakers, wey dey make sure say everybody for our community fit easily get access to the latest footwear trends. Whether you be sports lover or you dey into fashion, I get plenty different styles of kicks wey go match your swag. I dey bring the freshest sneakers straight to your phone, so you fit shop for footwear with total convenience. No need to waka go plenty shops or join long queues— I dey simplify everything so you fit find your perfect pair sharp sharp. Discover new releases, exclusive drops, and timeless classics—all tailor-made to your taste and dey available right for your area. I dey here to make sure say you dey ahead for fashion trends, and at the same time, dey support our local businesses. So whether you wan gear up for match, upgrade your everyday look, or just dey spoil yourself small, make I guide you to the footwear wey go blend with your lifestyle effortlessly."),
              ),
            ],
          )
      ),
    );
  }
}
