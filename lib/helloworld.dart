import 'package:flutter/material.dart';

void main(){
  runApp(//The runApp() function takes the given Widget and makes it the root of the widget tree
    const Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr
      ),
    ),
  );
}
// By using const, we are telling Dart to create a compile-time constant object of the Center widget instead of creating 
//a new instance of the Center widget every time the main function is called. 
//This can improve performance by reducing the number of unnecessary widget rebuilds.

// When a widget is declared as const, its properties must also be declared as const. 
// In the example above, the Text widget inside the Center widget is also declared as const.

// Declaring widgets as const is a good practice to follow whenever possible, 
// especially for widgets that do not change during the lifetime of the app. 
// This can help improve the performance and efficiency of your app.