import 'package:flutter/material.dart';
import '1_WidgetsLiftCycle/WidgetLifecyclePage.dart';
import '1_WidgetsLiftCycle/StatelessWidgetsPage.dart';
import '1_WidgetsLiftCycle/StatefulWidgetsPage.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'basic widgets',
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      routes: {
        'WidgetLifecyclePage':(context)=> WidgetLifecyclePage(),
        'StatelessWidgetsPage':(context)=> StatelessWidgetsPage(),
        // 'StatefullWidgetsPage':(context)=> Statefull
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Basci Widgets List'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Widget Life Cycle'),
              onPressed: (){
                Navigator.of(context).pushNamed('WidgetLifecyclePage');
              },
            ),
          ],
        ),
      ),
    );
  }
}