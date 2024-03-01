import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  final String email;
  final String password;

  Information(this.email, this.password);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {

  @override
  Widget build(BuildContext context) {
    var pagesize = MediaQuery.of(context);
    final double ekranwidth = pagesize.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Personel Information",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.teal,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          // Set decoration to cover the entire page
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Color(0xBBE2EC)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7],
            ),
          ),
          // Center the content using a Center widget
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50, width: 50,),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text("${widget.email}",
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.black),
                    ),),),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.key,
                      color: Colors.teal,
                    ),
                    title: Text("${widget.password}",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.black),
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
