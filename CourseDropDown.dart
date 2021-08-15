import 'package:flutter/material.dart';

class CourseDropDown extends StatefulWidget {
  String DropDescription;
  List<String> courses;
  String ?value;
  CourseDropDown({required this.DropDescription, required this.courses, required this.value});

  @override
  _CourseDropDownState createState() => _CourseDropDownState();
}

class _CourseDropDownState extends State<CourseDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              widget.DropDescription,
              style: TextStyle(
                fontSize: 20,

              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 2)
            ),
            child: DropdownButton<String>(

              value: widget.value,
              items: widget.courses.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() => this.widget.value = value),
            ),
          ),
        ],
      ),
    );



  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }
}
