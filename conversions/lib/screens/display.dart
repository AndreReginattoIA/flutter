import 'package:conversions/components/bottom_nav.dart';
import 'package:conversions/components/list_of.dart';
import 'package:conversions/lists/lists.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  int _selectedIndex = 0;
  
  _displayBottomNav(){
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavBatItem(
          icon: Icon(Icons.business),
          title: Text('Numérico'),
          listType: numericList,
        ),
        BottomNavBatItem(
          icon: Icon(Icons.business),
          title: Text('Tamanho'),
          listType: lengthList,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (newIndex){
        setState(() {
          _selectedIndex = newIndex;
        });
      }
    );
  }

  _textField(String title){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: title,
      ),
      onChanged: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversões")
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child:_textField("Seu número"), 
              ),
              Expanded(
                child:_textField("Sua resposta"), 
              ),
            ],
          ),
          Expanded(child:ListOf()),
          
        ],
      ),
      bottomNavigationBar: _displayBottomNav(),
    );
  }
}


