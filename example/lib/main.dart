import 'package:animated_button_flutter/animated_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Animated Button'),
        ),
        body: Center(
            child: Container(
                height: 40,
                width: double.maxFinite,
                margin: EdgeInsets.all(10),
                child: AnimatedButton(
                    text: "Animation Button",
                    backgroundColor: Colors.blue,
                    onTap: () {},
                    iconData: Icons.add,
                    radius: 20.0))));
  }
}
