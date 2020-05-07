import 'package:google_fonts/google_fonts.dart';
import 'AnalogClock.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController.addListener((){
      if(animationController.isCompleted){animationController.reverse();}
      else if(animationController.isDismissed){animationController.forward();}
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    animation =CurvedAnimation(parent: animationController,curve:Curves.bounceInOut);//easeInOut
    animation = Tween(begin: -0.5,end: 0.5).animate(animation);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Clock  ',style: TextStyle(color: Colors.blueAccent),),
            Icon(Icons.av_timer,color: Colors.amber,size: 30,)
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              Material(
                elevation: 15.0,
                color: Colors.white10,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 360,
                  height: 360,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      clockanloge(),
                      _currentTime(context),
                    ],
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 15.0,
                color: Colors.white10,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 3),
                      color: Colors.transparent,
                      shape: BoxShape.circle
                    ),
                    child: Transform(
                      alignment: FractionalOffset(0.5,0.1),
                      transform: Matrix4.rotationZ(animation.value),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height - 505,
                        width: MediaQuery.of(context).size.width - 120,
                        child: Image.asset(
                          'assets/img/pandulum.png',
                          height: 180,
                          width: 250,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _currentTime(context) {
    return RichText(
      text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: '${DateTime.now().hour > 12 ? ' PM' : ' AM'}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.black,
                  fontSize: 12),
            )
          ],
          text:
              '${DateTime.now().hour > 12 ? (DateTime.now().hour) - 12 : DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}:${DateTime.now().millisecond}',
          style: TextStyle(
              fontWeight:FontWeight.bold,
              letterSpacing: 1.2,
              color: Colors.amber,
              fontFamily: GoogleFonts.play().fontFamily,
              fontSize: 18)),
    );
//    return "${DateTime.now().hour > 12 ? (DateTime.now().hour) - 12 : DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}:${DateTime.now().millisecond}.${DateTime.now().hour>12?'PM':'AM'}";
  }
}
