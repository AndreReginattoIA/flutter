import 'package:flutter/material.dart';

class BottomNavBatItem implements BottomNavigationBarItem{

  @override 
  const BottomNavBatItem({
    @required this.icon,
    this.listType,
    this.title,
    Widget activeIcon,
    this.backgroundColor,
  }) : activeIcon = activeIcon ?? icon,
       assert(icon != null),
       assert(listType != null);
       

  final Widget icon;
  final Widget activeIcon;
  final Widget title;
  final Color backgroundColor;
  final List listType;

}
