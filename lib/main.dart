import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shox Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
         size: 30,color: Colors.black,
          shadows: [
            Shadow(color: Colors.black38,offset: Offset(1.5, 1.5),blurRadius:    6),
            Shadow(color: Colors.black38,offset: Offset(-1.5, -1.5),blurRadius: 6),
            Shadow(color: Colors.black38,offset: Offset(1.5, -1.5),blurRadius:   6),
            Shadow(color: Colors.black38,offset: Offset(-1.5, 1.5),blurRadius:   6),
          ]
          ),

          titleTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontFamily: "DM Sans"
          )
        )
      ),
      home: const HomePage(),
    );
  }
}
