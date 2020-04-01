import 'package:conversions/components/bottom_nav.dart';
import 'package:conversions/components/list_of.dart';
import 'package:conversions/models/conversion_type.dart';
import 'package:conversions/models/numeric_controller.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  int _selectedIndex = 0;
  static ConversionsType _type1 = NumericController();
  static ConversionsType _type2 = NumericController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _type1 = NumericController();
      _type2 = NumericController();
    });
  } 
  
  _displayBottomNav(){
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavBatItem(
          icon: Icon(Icons.business),
          type: NumericController,
          title: Text('Numérico'),
        ),
        BottomNavBatItem(
          icon: Icon(Icons.business),
          type: NumericController,
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
      body: ListOf(_type1, _type2),
      bottomNavigationBar: _displayBottomNav(),
    );
  }

}


