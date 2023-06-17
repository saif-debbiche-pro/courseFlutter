import 'package:flutter/material.dart';

import 'package:first_app/gradientContainer.dart';

// functions in dart are also just objects (values)
// anonymos functions : (String v1,String v2){print('$v1 $v2')}
// in dart we cant write or execute code in the (global scope)
// we have to put them inside of functions body
// this function must be main (first thing called by dart)
void main() {
// 1 must be in all flutter apps
// we need to import it ()
// MaterialApp() is a constructor of class that extends Widget or it is a widget
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 68, 39, 117),
        body: GradientContainer(
            Color.fromARGB(255, 68, 39, 117), Color.fromARGB(255, 60, 34, 104)),
      ),
    ),
  );
}
