import 'package:flutter/material.dart';

class CustomPageBuilder extends StatelessWidget {
  String label;
  IconData iconData;
  CustomPageBuilder({super.key, required this.label, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$label Page', style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.black,
              size: 40,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
