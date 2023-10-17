import 'package:flutter/material.dart';

void main() => runApp(MyApp());

void trial() {
  String? name = null;
  print(name);
  name = "amina";
  print(name);
}

void trial2() {
  List<String>? colors = ['blue', 'red'];
  colors = null;
}

void trial4() {
  const String? firstName = "null";
  const String? middleName = "Anna";
  const String? lastName = "Kabir";

  if (firstName != null) {
    print("First name is the non-nullable value");
  } else if (middleName != null) {
    print("Middle name is the first non-nullable value");
  } else if (lastName != null) {
    print("Last name is the first non-nullable value");
  }
}

void trial3() {
  List<String?>? colors = ['blue', 'red', 'null'];
  colors = null;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
