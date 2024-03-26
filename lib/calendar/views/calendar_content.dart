// Import packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// Import components
import 'package:calendar_projects/calendar/viewmodels/calendar_event.dart';

class calendarContent extends StatelessWidget {
  final double height;
  calendarContent({required this.height});

  // @override
  // Widget build(BuildContext context) {
  //   return calendarEvent();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCalendar(
        view: CalendarView.month,
        dataSource: MeetingDataSource(calendarEvent()),
        monthViewSettings: MonthViewSettings(
          dayFormat: 'EEE',
          numberOfWeeksInView: 6,
          appointmentDisplayCount: 2,
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          showAgenda: true,
          navigationDirection: MonthNavigationDirection.horizontal,
          showTrailingAndLeadingDates: true,
          agendaViewHeight: height,
          monthCellStyle: MonthCellStyle(
            textStyle: TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}
