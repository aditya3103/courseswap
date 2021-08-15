import 'package:course_swap/CustomScreen.dart';
import 'package:course_swap/RequestCard.dart';
import 'package:flutter/material.dart';

class MyRequirements extends StatefulWidget {
  const MyRequirements({Key? key}) : super(key: key);

  @override
  _MyRequirementsState createState() => _MyRequirementsState();
}

class _MyRequirementsState extends State<MyRequirements> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen('header', RequestCard());
  }
}
