import 'package:flutter/material.dart';

class DropListItem extends StatelessWidget {
  String studentName;
  DropListItem({required this.studentName});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '$studentName',
                style: TextStyle(fontSize: 20,
                ),
              ),
            ),
            Divider(
              height: 3,
              endIndent: MediaQuery.of(context).size.width * 0.60,
            )
          ],
        ));
  }
}
