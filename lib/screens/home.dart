import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: Text(
          welcome(),
          textDirection: TextDirection.ltr,
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }
}

String welcome() {
  String welcome;
  DateTime now = new DateTime.now();
  int hour = now.hour;
  int minute = now.minute;
  if (hour < 12) {
    welcome = "Good Morning";
  } else if (hour > 12 && hour < 18) {
    welcome = "Good Afternoon";
  } else {
    welcome = "Good Evening.";
  }
  String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();
  //welcome = "Welcome to Flutter Demo";
  return "The time is currently " +
      hour.toString() +
      ":" +
      minutes +
      "\n" +
      welcome;
}
