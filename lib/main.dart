import 'package:flutter/material.dart';

void main() => 
  runApp(
    MaterialApp(
      home : MyTest()
    )
  );

class MyTest extends StatelessWidget{
  int counter = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello " ,
          style:  TextStyle(
            color: Colors.white
          ),
           ),
        backgroundColor: Colors.blue[600],
      ),
      body: const Column(
        children: [

            Test() ,
           
           Padding(padding : EdgeInsets.all(40) , child: Text( "-> Hello 1") ) ,
           
            Padding(padding : EdgeInsets.all(40) , child: Text( "-> Hello 1") ) ,
          
        ],
      )
      ,

      floatingActionButton: FloatingActionButton.small( child: Text("+") , onPressed: (){}), 
  );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});
  @override
    _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child:  Text("${counter}"),
          
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            counter++;
          });
        } , child: Text("Add"))
      ],
    );
  }
}
