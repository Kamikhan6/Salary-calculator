import 'package:flutter/material.dart';

class WorkingDays extends StatefulWidget {
  @override
  _WorkingDaysState createState() => _WorkingDaysState();
}

class _WorkingDaysState extends State<WorkingDays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
        appBar: AppBar(
          title: Text("Salary Calculator"),
          elevation: 0.0,
        ),
    body:Column(
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
                   Text(
                    "Working Days Method",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    padding: EdgeInsets.only(left: 14,right: 14,top: 8),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.all(14.0),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Net Salary",
                        hintText: "Enter net Salary e.g PKR 5000",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.amber,
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 14,right: 14,top: 8),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14.0),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Present Days",
                      labelStyle: TextStyle(),
                      hintText: "Enter present days e.g 25",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                ),
              Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 8),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(14.0),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Paid Leave",
                    labelStyle: TextStyle(),
                    hintText: "Enter paid leave e.g 2 ",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 8),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(14.0),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Working Days",
                    labelStyle: TextStyle(),
                    hintText: "Enter Working days e.g 25",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
                Container(
                  padding: EdgeInsets.only(left: 14,right: 14,top: 8),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        )
                    ),
                  ),
                ),
              ],
            ),
        ),

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
