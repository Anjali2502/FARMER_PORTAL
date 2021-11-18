import 'dart:ui';

import 'package:farmer_merchant/services/auth.dart';
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
        actions:<Widget> [
          FlatButton.icon(
              onPressed:() async{
                await _auth.signOut();
              },
              icon: Icon(Icons.logout_sharp,color: Colors.white),
              label: Text("logout",
              style: TextStyle(color: Colors.white),))
      ],
      ),
    );
  }
}
