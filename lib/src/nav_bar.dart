import 'package:flutter/material.dart';
import '../model/item_model.dart';

class MaterialBottomNavBar extends StatefulWidget {
  final List<NavBarItem> items;
  final int currentIndex;
  final Function(int index)? onTap;
  final TextStyle selectedLabelStyle;
  final TextStyle unselectedLabelStyle;
  final Color cardColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry cardInternalPadding;
  final double cardElevation;
  final bool showSelectedLabels;
  final bool showUnselectedLabels;
  final Color cardShadowColor;
  final double selectedFontSize;
  final double unselectedFontSize;
  final double materialBottomNavBarElevation;

  const MaterialBottomNavBar({
    super.key,
    required this.items,
    this.onTap,
    this.backgroundColor = Colors.black,
    this.cardElevation = 15,
    this.currentIndex =0,
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
    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
  });

  @override
  State<MaterialBottomNavBar> createState() => _MaterialBottomNavBarState();
}

class _MaterialBottomNavBarState extends State<MaterialBottomNavBar> {
  int currentIndex = 0; // Move currentIndex to the state class.

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return _buildBottomNavigationBar(
      currentIndexIs: currentIndex,
      context: context,
    );
  }

  Widget _buildBottomNavigationBar({
    required int currentIndexIs,
    required BuildContext context,
  }) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: widget.backgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndexIs,
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
          setState(() {
            currentIndex = index;
          });
          if (widget.onTap != null) {
            widget.onTap!(index);
          }
        },
        items: widget.items.map((item) {
          return _buildBottomNavigationBarItem(item: item);
        }).toList(),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required NavBarItem item,
  }) {
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
