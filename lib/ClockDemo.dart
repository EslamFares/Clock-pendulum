import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter/material.dart';
class ClockDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterAnalogClock'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          child: FlutterAnalogClock(
            dateTime: DateTime.now(),
            dialPlateColor: Colors.black.withOpacity(.8),
            hourHandColor: Colors.black.withOpacity(.8),
            minuteHandColor: Colors.black.withOpacity(.9),
            secondHandColor: Colors.black.withOpacity(.9),
            numberColor:Colors.blue.withRed(50) ,
            borderColor: Colors.black.withOpacity(.8),
//            tickColor: Colors.red,
            centerPointColor: Colors.black.withOpacity(.9),
            showBorder: true,
            showTicks: false,
            showMinuteHand: true,
            showSecondHand: true,
            showNumber: true,
            borderWidth: 3.0,
            hourNumberScale: .72,
            hourNumbers: [ '0001', '0010', '0011', '0100', '0101', '0110', '0111', '1000', '1001', '1010', '1011','1100'],
            isLive: true,
            width: 200.0,
            height: 200.0,
            decoration: const BoxDecoration(),
            child: Text('Clock'),
          ),
        ),
      ),
    );
  }
}