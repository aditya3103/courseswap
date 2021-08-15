import 'package:flutter/material.dart';
import 'package:course_swap/CustomScreen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello', style: TextStyle(fontSize: 10),)
    );
  }
}
