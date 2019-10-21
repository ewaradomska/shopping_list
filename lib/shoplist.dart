import 'package:flutter/material.dart';
import './input.dart';

class Shoplist extends StatefulWidget {
 
  
  @override
  _ShoplistState createState() => _ShoplistState();
}

class _ShoplistState extends State<Shoplist> {

  final List<String> items = [];

  Function removeItem(final String item){
       items.remove(item);   
  }

  Function addItemsFromInput(String title){
    setState(() {
      items.add(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children: <Widget>[
            InputData(addItemsFromInput),
            Card(child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
              child: Text("You have " + items.length.toString() + " more items to buy.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),),
            SingleChildScrollView(child:
            Column(
              children: items.map((item) {
                return Card(child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                  Text(item, style: TextStyle(fontSize: 20)),
                  IconButton(icon: Icon(Icons.delete), color: Colors.green, onPressed: () {
                setState(() {
                 removeItem(item); 
                });},),]),);
              }).toList(),
          )
    )]);
}}