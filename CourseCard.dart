import 'package:course_swap/DropListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  //const CourseCard({Key? key}) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  List<String> stud = ['Aditya', 'Anant', 'Sushobhit','Aditya', 'Anant', 'Sushobhit','Aditya', 'Anant', 'Sushobhit','Aditya', 'Anant', 'Sushobhit','Aditya', 'Anant', 'Sushobhit',];
  List<DropListItem> obj = [];
  bool didPress = false;
  Icon dropIcon = Icon(Icons.arrow_drop_down);
  String buttonText= 'Show Students';


  @override
  Widget build(BuildContext context) {
    //bool didPress = true;

    for (int i = 0; i < stud.length; ++i) {
      obj.add(DropListItem(studentName: '${stud[i]}'));
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.blueGrey.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'EEE F111',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                  )
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Electrical Sciences',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                'MWF 2PM-3PM',
                style: TextStyle(fontSize: 20),
              ),

              SizedBox(
                height: 20,
              ),

              //if(didPress)
              OutlinedButton.icon(
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                        duration: Duration(seconds: 10),
                        backgroundColor: Colors.blueGrey
                        ,content: Container(
                      //color: Colors.blueGrey,
                      height: MediaQuery.of(context).size.height* 0.60,
                      child:ListView(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Students', style: TextStyle(fontSize: 20, color: Colors.white),),
                                  TextButton(onPressed: (){Scaffold.of(context)..hideCurrentSnackBar();}, child: Text('Collapse'), )
                                ],
                              ),
                              Container(
                                child: Column(
                                  children: obj,
                                ),
                              )
                              //obj
                            ],
                          ),


                    )
                  ));
                  setState(() {

                    didPress = !didPress;
                    if(didPress){
                      dropIcon= Icon(Icons.arrow_drop_up);
                      buttonText='Hide Students';
                    } else {
                      dropIcon= Icon(Icons.arrow_drop_down);
                      buttonText= 'Show Students';
                    }
                    obj.clear();
                  });
                },
                icon: dropIcon,
                label: Text(buttonText),
              ),

              // if (didPress)
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: obj,
              //       ),
              //     ),
              //   )

              // ListView(
              //   children: obj,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
