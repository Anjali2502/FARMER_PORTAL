import 'package:flutter/material.dart';
import 'package:farmer_merchant/home/navBar.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home Page'),
      ),
    );
  }
}
