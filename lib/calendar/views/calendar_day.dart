// Import packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// Import components
import 'package:calendar_projects/calendar/viewmodels/calendar_event.dart';

class calendarDay extends StatefulWidget {
  const calendarDay({super.key});

  @override
  State<calendarDay> createState() => _calendarDay();
}

class _calendarDay extends State<calendarDay> {

  Widget build(BuildContext context) {
    return Container(
      child: SfCalendar(
        view: CalendarView.day,
        dataSource: MeetingDataSource(calendarEvent()),
        monthViewSettings: MonthViewSettings(
          dayFormat: 'EEE',
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          showAgenda: true,
          navigationDirection: MonthNavigationDirection.horizontal,
          showTrailingAndLeadingDates: true,
          agendaViewHeight: 100,
          monthCellStyle: MonthCellStyle(
            textStyle: TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}