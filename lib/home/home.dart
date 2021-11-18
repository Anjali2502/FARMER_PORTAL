import 'dart:ui';

import 'package:farmer_merchant/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmer_merchant/home/navBar.dart';
import 'package:farmer_merchant/services/auth.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home'),
      //   actions:<Widget> [
      //     // FlatButton.icon(
      //     //     onPressed:() async{
      //     //       await _auth.signOut();
      //     //     },
      //     //     icon: Icon(Icons.logout_sharp,color: Colors.white),
      //     //     label: Text("logout",
      //     //     style: TextStyle(color: Colors.white),))
      // ],
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: <Widget>[
              Crops(),
              Crops(),
              Crops(),
              Crops(),
              Crops(),
              Crops(),
            ],
          ),
        ),
      ),
    );
  }
}

class Crops extends StatelessWidget {
  const Crops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      margin: EdgeInsets.only(
        // left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      width: size.width*0.6,
      height: size.height*0.35,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              )
            ),
            height: size.height*0.25,
            child: Image.asset(
              'assets/wheat.jpeg',
              // height: size.height*0.25,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height*0.1,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: Colors.black.withOpacity(0.23),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
