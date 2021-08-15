import 'package:flutter/material.dart';
import 'package:course_swap/CourseDropDown.dart';

class RequestCard extends StatefulWidget {
  const RequestCard({Key? key}) : super(key: key);

  @override
  _RequestCardState createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard> {
  List<String> courses = ['EEE F111', 'CS F111', 'PHY F111', 'CHEM F111'];
  String? value;
  int? selectedVal = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(12),
      child: Container(
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RadioListTile<int>(
                    value: 0,
                    title: Text('Swap Only'),
                    subtitle: Text(
                        'You get the option to only swap course with someone else'),
                    groupValue: selectedVal,
                    onChanged: (value) =>
                        setState(() => selectedVal = value)),
                RadioListTile<int>(
                    value: 1,
                    title: Text('Drop Course'),
                    subtitle: Text('Put a request to drop a course'),
                    groupValue: selectedVal,
                    onChanged: (value) =>
                        setState(() => selectedVal = value)),
                RadioListTile<int>(
                    value: 2,
                    title: Text('Want Course'),
                    subtitle: Text('Put a request to take a course'),
                    groupValue: selectedVal,
                    onChanged: (value) =>
                        setState(() => selectedVal = value)),
                CourseDropDown(DropDescription: 'Courses', courses: courses,value: null),
                CourseDropDown(DropDescription: 'Courses', courses: courses,value: null),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Request',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            )),
      ),
    );
  }
}
