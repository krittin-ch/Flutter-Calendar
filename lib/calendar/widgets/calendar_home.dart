// Import packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// Import components
import 'package:calendar_projects/calendar/views/calendar_header.dart';
import 'package:calendar_projects/calendar/views/calendar_content.dart';
import 'package:calendar_projects/calendar/views/calendar_day.dart';

class calendarHome extends StatelessWidget {
  double _height = 300.0;
  final List<String> size = ['full', 'half'];
  final int onSelectedSize = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: calendarHeader(size: size,),
        // body: calendarContent(height: _height)
      body: calendarContent(height: _height,),
    );
  }
}