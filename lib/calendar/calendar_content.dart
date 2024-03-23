// Import packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendarContent extends StatelessWidget {

  final double height;
  calendarContent({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCalendar(
        view: CalendarView.month,
        monthViewSettings: MonthViewSettings(
          dayFormat: 'EEE',
          numberOfWeeksInView: 6,
          appointmentDisplayCount: 2,
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          showAgenda: false,
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
