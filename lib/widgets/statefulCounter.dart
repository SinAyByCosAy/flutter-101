import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();

}

class _CounterState extends State<Counter>{
  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 15),
        Text('Count: $_counter'),
      ],
    );
  }
}

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      )
    )
  );
}

// State: This is a generic type that represents the mutable state for a StatefulWidget in Flutter. 
//It is parameterized with the type of the StatefulWidget that it corresponds to.

// <Counter>: This is the type parameter that is passed to State. 
// It specifies that the State class being defined is associated with the Counter widget.

// createState(): This is a method that is used to create an instance of the _CounterState class. 
// It is called by the framework when the widget is first inserted into the widget tree.

// =>: This is a shorthand way to define a function in Dart. 
// In this case, it is used to define an anonymous function that returns a new instance of the _CounterState class.

// _CounterState(): This is the constructor for the _CounterState class. 
// It is called by the anonymous function defined by createState() to create a new instance of _CounterState.

// Overall, the line State<Counter> createState() => _CounterState(); 
// defines the _CounterState class as the mutable state for the Counter widget, 
// and specifies how to create new instances of _CounterState when needed.




