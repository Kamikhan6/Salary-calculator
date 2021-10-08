import 'package:flutter/material.dart';

class DailyWageResult extends StatefulWidget {
  final String value1;
  final String value2;
  final String result;
  DailyWageResult({Key key, this.value1, this.value2,this.result}) : super(key: key);

  @override
  _DailyWageResultState createState() => _DailyWageResultState();
}

class _DailyWageResultState extends State<DailyWageResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salary Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 170,
            width: 415,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                stops: [0.2, 0.4, 0.6, 0.8],
                colors: [
                  Colors.cyan[700],
                  Colors.cyan[500],
                  Colors.cyan[600],
                  Colors.cyan[800],
                ],
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getImageAsset(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Text("Net Daily wage   ${widget.value1}",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Text("Present Days    ${widget.value2}",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                Text("Monthly Gross Salary:  ${widget.result}",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage("assets/logo.png");
    Image image = Image(
      image: assetImage,
      width: 140.0,
      height: 110.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 20.0, left: 10.0),
    );
  }
}
