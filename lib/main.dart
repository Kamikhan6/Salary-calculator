import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salary_calculator/Screens/calculation_method.dart';
import 'package:salary_calculator/Screens/homepage.dart';
import 'package:path/path.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Salary Calculator",
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          this.context, MaterialPageRoute(builder: (context) => methods()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.2, 0.4, 0.6, 0.8],
    colors: [
    Colors.blue[700],
    Colors.blue[600],
    Colors.blue[500],
    Colors.blue[400],
       ],
       ),
        ),
      child: Scaffold(
        backgroundColor: Color(0x00000000),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset("assets/splash.json")),
              SizedBox(
                height: 20,
              ),
              Text(
                "Salary Calculator",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
      ),
    );
  }
}
