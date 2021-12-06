import 'package:farmer_merchant/home/navBar.dart';
import 'package:flutter/material.dart';

class APMC extends StatefulWidget {
  const APMC({Key? key}) : super(key: key);

  @override
  _APMCState createState() => _APMCState();
}

class _APMCState extends State<APMC> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('APMC'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: Text('TRACK LOACTION',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0,0),
                        blurRadius: 3,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]
                ),
              ),
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                Container(
                  width: size.width*0.85,
                  height: size.height*0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/maps.PNG')
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.23),
                      ),
                      BoxShadow(
                        offset: Offset(10,0),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.23),
                      ),
                    ],
                  ),
                ),
               Positioned(
                 top: size.height*0.20,
                 left: size.width*0.18,
                 child: FlatButton(
                   onPressed: () {},
                   child: Text('click to view google maps',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                   color: Colors.black,
                 ),
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}
