// Import packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// Import components
import 'package:calendar_projects/calendar/calendar_header.dart';
import 'package:calendar_projects/calendar/calendar_content.dart';

class calendarHome extends StatelessWidget {
  final double _height = 0.0;
  final List<String> size = ['50', '40', '30', '20'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: calendarHeader(size: size),
        body: calendarContent(height: _height)
    );
  }
}