import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {

    return Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.1, 0.5, 0.7, 0.9],
    colors: [
    Colors.blue[700],
    Colors.blue[600],
    Colors.blue[500],
    Colors.blue[400],
    ],
    ),
    ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Salary Calculator"),
          elevation: 0.0,
        ),
        backgroundColor: Color(0x00000000),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 0, top: 24),
                  child: Text(
                    "Basic Pay",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "",
                      hintText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                      labelText: "",
                      hintText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "",
                      hintText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "",
                      hintText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "",
                      hintText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
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
