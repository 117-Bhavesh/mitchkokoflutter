// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  print("Hello Bhavesh");
}
//[1] removed everything below the main function


//[2] created a stateless widget
class MyApp extends StatelessWidget {
  MyApp({super.key});

  /*

  ------------------------------------------------------------------------------
  B A S I C S

  */

  //Variables
  String name = "Ness";
  int age = 18;
  double pi = 3.14159;
  bool isBeginner = true;
  
  //basic function
  void fruits() {
    print("Apples");
  }
  
  //functions with parameters
  void greetPerson(String name) {
    print("Hello, " + name);
  }

  //return type functions
  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    int mySum = add(3, 5);
    print(mySum);

    greetPerson("Ssen");

    print(isBeginner || (age < 18));
    if (age >= 18) {
      print("you are an adult");
    } else {
      print("you are not an adult");
    }

    String grade = "S";
    switch (grade) {
      case "S":
        print("Your CGPA is 10!");
        break;
      case "A":
        print("Your CGPA is 9!");
        break;
      case "B":
        print("Your CGPA is 8!");
        break;
      case "C":
        print("Your CGPA is 7!");
        break;
      case "D":
        print("Your CGPA is 6!");
        break;
      default:
        print("Invalid Grade");
    }

    for (int i = 0; i < 5; i++) {
      print(i + 1);
    }

    //[3] always set return to MaterialApp()
    //[4] M a t e r i a l A p p
    //    is a predefined class or widget in a flutter.
    //    It is likely the main or core component of a flutter app.
    //    The MaterialApp widget provides a wrapper around other Material Widgets.
    //    We can access all the other components and widgets provided by Flutter SDK.
    return const MaterialApp(
      //to remove the debug banner
      debugShowCheckedModeBanner: false,
      //[5] S c a f f o l d
      //    The scaffold will expand to fill the available space.
      //    That usually means that it will occupy its entire window or device screen.
      //    The Scaffold is designed to be a top level container for a MaterialApp.
      //    This means that adding a Scaffold to each route on a Material app will
      //    provide the app with Material's basic visual layout structure.
      //    Scaffold is a class in flutter which provides many widgets or
      //    we can say APIs like Drawer, Snack-Bar, Bottom-Navigation-Bar,
      //    Floating-Action-Button, App-Bar, etc.
      home: Scaffold(
        backgroundColor: Colors.cyan,
      ),
    );
  }
}