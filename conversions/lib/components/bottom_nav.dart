import 'package:conversions/models/conversion_type.dart';
import 'package:flutter/material.dart';

class BottomNavBatItem implements BottomNavigationBarItem{

  @override 
  const BottomNavBatItem({
    @required this.icon,
    @required this.type,
    this.title,
    Widget activeIcon,
    this.backgroundColor,
  }) : activeIcon = activeIcon ?? icon,
       assert(icon != null),
       assert(type != null);//required
       

  final Widget icon;
  final Widget activeIcon;
  final Widget title;
  final Color backgroundColor;
  final ConversionsType type;

}
