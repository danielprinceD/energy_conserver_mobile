import 'package:flutter/material.dart';

void main() => 
  runApp(MaterialApp(
    home:  Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello",
          style:  TextStyle(
            color: Colors.white
          ),
           ),
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
          child:  Text("Item 1"),
      ),
      floatingActionButton: FloatingActionButton.small( child: Text("+") , onPressed: (){}),
    ) , 
  ));
