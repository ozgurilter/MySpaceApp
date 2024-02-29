import 'dart:async';
import 'package:flutter/material.dart';
import 'package:proje/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    startLoading();
  }

  void startLoading() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        if (progressValue >= 1.0) {
          timer.cancel();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => ProfileScreen()),
          );
        } else {
          progressValue += 0.01;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/space1.jpg'),
            fit: BoxFit.cover
          )
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Transitioning to Space...',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
              ),
              SizedBox(height: 20.0),
              CircularProgressIndicator(
                value: progressValue,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                '${(progressValue * 100).toInt()}%',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

