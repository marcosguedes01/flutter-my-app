import 'package:flutter/material.dart';

class RowColScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Example'),
        ),
        body: Container(
          child: buildColumnMain()
        ),
      ),
    );
  }

  Widget buildColumnMain() => 
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildAssetImages(),
        buildIcons()
      ],
    );

  Widget buildAssetImages() => 
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(child: Image.asset('images/pic1.jpg')),
        Expanded(
          flex: 2,
          child: Image.asset('images/pic2.jpg')
        ),
        Expanded(child: Image.asset('images/pic3.jpg')),
      ],
    );
  
  Widget buildIcons() => 
    Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

}