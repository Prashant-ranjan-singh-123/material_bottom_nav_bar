import 'package:flutter/material.dart';

import '../model/item_model.dart';

class MaterialBottomNavBar extends StatefulWidget {
  List<NavBarItem> items;
  int currentIndex;
  Function(int index)? onTap;
  TextStyle selectedLabelStyle;
  TextStyle unselectedLabelStyle;
  Color cardColor;
  Color backgroundColor;
  EdgeInsetsGeometry cardInternalPadding;
  double cardElevation;
  bool showSelectedLabels;
  bool showUnselectedLabels;
  Color cardShadowColor;
  double selectedFontSize;
  double unselectedFontSize;
  double materialBottomNavBarElevation;
  MaterialBottomNavBar(
      {super.key,
      required this.items,
      this.currentIndex = 0,
      this.onTap,
      this.backgroundColor = Colors.black,
      this.cardElevation = 15,
      this.selectedLabelStyle = const TextStyle(color: Colors.white),
      this.unselectedLabelStyle = const TextStyle(color: Colors.white),
      this.cardColor = Colors.white,
      this.showSelectedLabels = true,
      this.showUnselectedLabels = true,
      this.cardShadowColor = Colors.white,
      this.materialBottomNavBarElevation = 0,
      this.selectedFontSize = 15,
      this.unselectedFontSize = 12,
      this.cardInternalPadding =
          const EdgeInsets.symmetric(horizontal: 15, vertical: 8)})
      : assert(currentIndex >= 0 && currentIndex <= items.length,
            'Current index should be greater then 0 and less then items.length');

  @override
  State<MaterialBottomNavBar> createState() => _MaterialBottomNavBarState();
}

class _MaterialBottomNavBarState extends State<MaterialBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return _buildBottomNavigationBar(
        currentIndex: widget.currentIndex, context: context);
  }

  Widget _buildBottomNavigationBar(
      {required int currentIndex, required BuildContext context}) {
    return Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: widget.backgroundColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedLabelStyle: widget.selectedLabelStyle,
          unselectedLabelStyle: widget.unselectedLabelStyle,
          selectedItemColor: widget.selectedLabelStyle.color,
          unselectedItemColor: widget.unselectedLabelStyle.color,
          showSelectedLabels: widget.showSelectedLabels,
          showUnselectedLabels: widget.showUnselectedLabels,
          selectedFontSize: widget.selectedFontSize,
          unselectedFontSize: widget.unselectedFontSize,
          elevation: widget.materialBottomNavBarElevation,
          onTap: (index) {
            widget.onTap!(index);
            setState(() {
              widget.currentIndex = index;
            });
          },
          items: widget.items.map((item) {
            return _buildBottomNavigationBarItem(item: item);
          }).toList(),
        ));
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {required NavBarItem item}) {
    return BottomNavigationBarItem(
      icon: Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: item.unSelectedIcon,
        ),
      ),
      label: item.label,
      activeIcon: Card(
        color: widget.cardColor,
        elevation: widget.cardElevation,
        shadowColor: widget.cardShadowColor,
        child: Padding(
          padding: widget.cardInternalPadding,
          child: item.selectedIcon,
        ),
      ),
    );
  }
}
