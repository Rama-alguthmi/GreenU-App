import 'package:flutter/material.dart';
import 'package:greenui/Pages/ActList.dart';
import 'package:greenui/Pages/ActPage.dart';
import 'package:greenui/Pages/MainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenU',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(actionsIconTheme: IconThemeData(size: 30,) ),
        useMaterial3: true,
        //ActList   actCardDetails LifeCoices 
      ),
      routes: {
     "actPage":(context) =>const ActPage() ,
      "actList":(context) =>const ActList(),
      "MainPage":(context) =>const MainPage(),
      //  "LifeCoices":(context) => LifeCoices(),
       

      },
      home:   const MainPage(),
    );
  }
}
