import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class Analogclock extends StatefulWidget {
  @override
  _AnalogclockState createState() => _AnalogclockState();
}

class _AnalogclockState extends State<Analogclock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnalogClock'),
        centerTitle: true,
      ),
      body: Center(
        child: clockanloge(),
      ),
    );
  }
}

class clockanloge extends StatelessWidget {
  const clockanloge({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnalogClock(
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.transparent),
          color: Colors.transparent,
          shape: BoxShape.circle),
      width: 300.0,
      height: 300.0,
      isLive: true,
      hourHandColor: Colors.black,
      minuteHandColor: Colors.black,
      showSecondHand: true,
      numberColor: Colors.blue,
      showNumbers: true,
      textScaleFactor: 1.4,
      showTicks: true,
      showDigitalClock: true,
      datetime: DateTime(2019, 1, 1, 9, 12, 7),
      digitalClockColor: Colors.blueAccent,
    );
  }
}
