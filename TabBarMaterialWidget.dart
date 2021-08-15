import 'package:flutter/material.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab,
  });

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeHolder = Opacity(opacity: 0, child: IconButton(icon: Icon(Icons.no_cell),onPressed: (){Navigator.pushNamed(context, '/req');},),);
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(index: 0, icon: Icon(Icons.dashboard_outlined)),
          placeHolder,
          TextButton(style: TextButton.styleFrom(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )),onPressed: (){Navigator.pushNamed(context, '/profile');}, child: CircleAvatar(backgroundColor: Colors.redAccent,radius: 12,))

        ],
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.red : Colors.black,
      ),
      child: IconButton(
        icon: icon,
        onPressed: () {
         // Navigator.pop(context);
          Navigator.pushNamed(context, '/first');
          },
      ),
    );
  }
}
