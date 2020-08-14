import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return
       BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.pinkAccent,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.merge_type),title: Text('For you')),
            BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark),title: Text('Collections')),
            BottomNavigationBarItem(icon: Icon(Icons.business_center),title: Text('Orders')),
            BottomNavigationBarItem(icon: Icon(Icons.live_help),title: Text('Help')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('Account')),
          ],
          onTap: (int index){
            setState(() {
              currentIndex=index;
            });
          },
        );
  }
}
