import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'report_container.dart';
import 'simple_dialog.dart';
import 'animated_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (BuildContext context) => Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                simpleDialog(context, ReportContainer(context: context));
                // or to use: animatedDialog(context, ReportContainer(context: context));
              },
              child: Text('Click me'),
            ),
          ),
        ),
      ),
    );
  }
}
