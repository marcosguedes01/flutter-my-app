import 'package:flutter/material.dart';

class SimpleNoMaterialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Simple No Material example',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87
          ),
        ),
      ),
    );
  }
}