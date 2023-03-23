import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{//class specifically for Navigation Bar layout
  const NavBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Color(0xff800080)),
      child: Row(
        children: [
          const IconButton(onPressed: null, icon: Icon(Icons.menu), tooltip: 'Navigation menu',),
          Expanded(child: title,),
          const IconButton(onPressed: null, icon: Icon(Icons.search), tooltip: 'Search',),
        ],
      )
    );
  }
}

class NavBarTitle extends StatelessWidget{//main class defining order from top to bottom
  const NavBarTitle({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: 
        [
          NavBar(
            title: Text('Wimbledon 2023',
            style: Theme.of(context)
            .primaryTextTheme
            .titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}

void main(){
  runApp(const MaterialApp(
    title: 'Nav Bar Demo App',
    home: SafeArea(//SafeArea is a widget in the Flutter framework that insets its child by sufficient padding to avoid the device's system UI elements, such as the status bar or notch, 
    //from overlapping the child. This helps to ensure that the child content is fully visible and not obscured by the system UI.
      child: NavBarTitle()),
  ));
}