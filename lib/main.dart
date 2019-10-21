import 'package:flutter/material.dart';
import './shoplist.dart';
import './input.dart';


void main() => runApp(ShoppingList());


class ShoppingList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping List",
      home: Scaffold(
        appBar: AppBar(title: Text('Shopping list'), backgroundColor: Colors.green,),
        body: 
        SingleChildScrollView(
          child:
        Column(
          children: <Widget>[
          Shoplist(),],),),
      ),);
  }
}