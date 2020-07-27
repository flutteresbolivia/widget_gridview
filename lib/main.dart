import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            reverse: false, // por defecto
            scrollDirection: Axis.vertical, // por defecto
            padding: EdgeInsets.all(10),
            children: List.generate(50, (index) {
              return Container(
                child: Card(
                  elevation: 10,
                  child: Center(child: Text('$index', style: style)),
                  color: Colors.blue,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
