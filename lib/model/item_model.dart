import 'package:flutter/material.dart';

class NavBarItem {
  Icon selectedIcon;
  Icon unSelectedIcon;
  String label;

  NavBarItem(
      {required this.selectedIcon,
      required this.unSelectedIcon,
      required this.label});
}
