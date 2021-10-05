import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:salary_calculator/Screens/homepage.dart';
import 'package:salary_calculator/models/cardModel.dart';

class methods extends StatefulWidget {
  @override
  _methodsState createState() => _methodsState();
}

class _methodsState extends State<methods> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Salary Calculator"),
          elevation: 0.0,
        ),
        // backgroundColor: Color(0x00000000),
        body: SizedBox(
          width: 415,
          child: Container(
            margin: EdgeInsets.only(top: 110.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.2, 0.4, 0.6, 0.8],
                colors: [
                  Colors.blue[700],
                  Colors.blue[600],
                  Colors.blue[500],
                  Colors.blue[500],
                ],
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Select the method of your choice",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Card(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 100,
                        child: Center(
                            child: Text(
                          'Daily wedges Method',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Card(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 100,
                        child: Center(
                            child: Text('Total Days Method',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 100,
                        child: Center(
                            child: Text('Working Days Method',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
