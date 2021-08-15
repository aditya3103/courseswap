import 'package:course_swap/CourseCard.dart';
import 'package:course_swap/CourseDropDown.dart';
import 'package:course_swap/CustomScreen.dart';
import 'package:course_swap/MyProfile.dart';
import 'package:course_swap/MyRequirements.dart';
import 'package:course_swap/RequestCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:course_swap/TabBarMaterialWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) =>  MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/req': (context) => MyRequirements(),
        '/profile': (context) => MyProfile()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int index =0;

  final pages  = <Widget>[
    CustomScreen('Dashboard', CourseCard()),
    CustomScreen(
        'Add Requirement',
        MyRequirements()),
    CustomScreen('My Profile', MyProfile())

  ];



  @override
  Widget build(BuildContext context) => Scaffold(
    extendBody: true,
    body: pages[index],
  );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
