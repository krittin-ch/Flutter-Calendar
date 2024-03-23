// Import packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendarHeader extends StatelessWidget implements PreferredSizeWidget {
  final List<String> size;

  calendarHeader({required this.size});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        PopupMenuButton<String>(
          icon: Icon(Icons.settings),
          itemBuilder: (BuildContext context) {
            return size.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text('$choice',),
              );
            }).toList();
          },
        ),
      ],
    );
  }
}
