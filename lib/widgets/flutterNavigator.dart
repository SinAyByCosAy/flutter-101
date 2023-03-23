import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      title: 'Flutter Navigator',
      home: NavigatorHome(),
    )
  );
}

class NavigatorHome extends StatelessWidget{
  const NavigatorHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: const Text('Wimbledon 2023'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
      body: const Center(child: Text('Hey There!')),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}