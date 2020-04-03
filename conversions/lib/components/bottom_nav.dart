import 'package:conversions/components/BottomNavBatItem.dart';
import 'package:conversions/models/conversions_controller.dart';
import 'package:conversions/utils/lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final controller = GetIt.I.get<ConversionsController>();

  List<BottomNavBatItem> currentItem = [
    BottomNavBatItem(
      icon: Icon(Icons.business),
      title: Text('Numérico'),
      listType: teste,
    ),
    BottomNavBatItem(
      icon: Icon(Icons.business),
      title: Text('Tamanho'),
      listType: teste,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Observer(builder: (_) {
      return BottomNavigationBar(
        items: currentItem,
        currentIndex: controller.currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (newIndex) {
          controller.setLists(currentItem[newIndex].listType);
          controller.currentIndex = newIndex;
        },
      );
    });
  }
}