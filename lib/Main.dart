import 'package:flutter/material.dart';
import 'login.dart';
import 'Home.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Material App',
      home: Login(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/1': (BuildContext context) => Login(),
        '/2': (BuildContext context) => Home()
      },
    );
  }
}