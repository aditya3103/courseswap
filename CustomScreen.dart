import 'package:course_swap/TabBarMaterialWidget.dart';
import 'package:flutter/material.dart';

import 'CourseCard.dart';

class CustomScreen extends StatefulWidget {
  int index=0;

  String header='hi';
  Widget SliverListWidget;

  CustomScreen(this.header,  this.SliverListWidget, );

  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){Navigator.pushNamed(context, '/req');}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: [TextButton(child: Icon(Icons.settings), onPressed: (){},style: TextButton.styleFrom(primary: Colors.white, splashFactory: InkSplash.splashFactory),), TextButton(child: Icon(Icons.info), onPressed: (){},)],
            floating: true,
            expandedHeight: 120.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Course Swap'),
              background: Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/BITS_Pilani-Logo.svg/1200px-BITS_Pilani-Logo.svg.png')),
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(widget.header, style: TextStyle(fontSize: 20),),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return widget.SliverListWidget;
              },
              childCount: 5,
            ),
          ),
        ],
      ),
        bottomNavigationBar: TabBarMaterialWidget(
          index: widget.index,
          onChangedTab: onChangedTab,
        )
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this.widget.index = index;
    });
  }
}
