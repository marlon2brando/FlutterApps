import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flexible Widget  Demo',
      home: Scaffold(body: MyFlexiblePage(),),
    );
  }
}

class MyFlexiblePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Flexible(
          flex: 2,
          child: MyFlexibleRow(),
        ),
        Flexible(
          flex: 3,
          child: MyFlexibleFlex(),
        )
      ],
    );
  }
}

class MyFlexibleRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Container(color: Colors.cyan,),
        ),
        Flexible(
          flex: 4,
          child: Container(color: Colors.teal,),
        ),
        Flexible(
          flex: 2,child: Container(color: Colors.indigo,),
        )
      ],
    );
  }
}

class MyFlexibleFlex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Flexible(
          flex: 3,
          child: Container(color: Colors.lime,),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.purple,),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.orange,),
        ),
        Flexible(
          flex: 3,
          child: Container(color: Colors.deepPurple,),
        )
      ],
    );
  }
}