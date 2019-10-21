import 'package:flutter/material.dart';

class InputData extends StatelessWidget {

String product;
TextEditingController controller = new TextEditingController();
final Function addItem;

InputData(this.addItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
        TextField(decoration: InputDecoration(labelText: 'product'),
        onChanged: (value){
          product = value;
        },
        controller: controller),
        FlatButton(child: Text('Save', style: TextStyle(color: Colors.green),),
        onPressed: (){
          addItem(product);
          controller.clearComposing();
        }
        ,)
      ],)
    );
  }
}