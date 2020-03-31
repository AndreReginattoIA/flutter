import 'package:conversions/components/bottom_nav.dart';
import 'package:conversions/components/list_of.dart';
import 'package:conversions/models/conversion_type.dart';
import 'package:conversions/models/numeric_conversions.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  int _selectedIndex = 0;
  ConversionsType _type = NumericConversions();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _type = NumericConversions();
    });
  } 
  
  _displayBottomNav(){
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavBatItem(
          icon: Icon(Icons.business),
          type: NumericConversions(),
          title: Text('Numérico'),
        ),
        BottomNavBatItem(
          icon: Icon(Icons.business),
          type: NumericConversions(),
          title: Text('Tamanho'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversões")
      ),
      body: ListOf(_type),
      bottomNavigationBar: _displayBottomNav(),
    );
  }

}


