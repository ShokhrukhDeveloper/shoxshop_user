import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

        items: [
      BottomNavigationBarItem(icon:Image.asset("assets/icons/home.png",width: 24,height: 24,),label: "asd"),
      BottomNavigationBarItem(icon:Image.asset("assets/icons/pesanan.png",width: 24,height: 24,),label: "asd"),
      BottomNavigationBarItem(icon:Image.asset("assets/icons/profile.png",width: 24,height: 24,),label: "asd"),
      BottomNavigationBarItem(icon:Image.asset("assets/icons/wishlist.png",width: 24,height: 24,),label: "asd"),

    ]);
  }
}
