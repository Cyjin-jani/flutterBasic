import 'package:basic/screen/home_screen.dart';
import 'package:basic/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JinFlix',
      theme: ThemeData(
          accentColor: Colors.white,
          primaryColor: Colors.black,
          brightness: Brightness.dark),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(child: Text('search')),
              ),
              Container(
                child: Center(child: Text('save')),
              ),
              Container(
                child: Center(child: Text('more')),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
