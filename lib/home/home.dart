import 'dart:math';
import 'dart:ui';

import 'package:farmer_merchant/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmer_merchant/home/navBar.dart';
import 'package:farmer_merchant/services/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isFlipped = false;

  // Widget transition(Widget widget, Animation<double> animation) {
  //
  //   final flipAnimation = Tween(begin: pi, end: 0.0).animate(animation);
  //   return AnimatedBuilder(
  //     animation: flipAnimation,
  //     builder: (context,widget){
  //       final isUnder = (ValueKey(isFlipped) != widget!.key);
  //       final value = isUnder ? min(flipAnimation.value, pi/2):flipAnimation.value;
  //       return Transform(
  //         transform: Matrix4.rotationY(value),
  //         child: widget,
  //         alignment: Alignment.center,
  //       );
  //     },
  //   );
  // }

  Widget transition(Widget widget, Animation<double> animation) {

    final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

    return AnimatedBuilder(
      animation: flipAnimation,
      child: widget,
      builder: (context,widget){

        final isUnder = (ValueKey(isFlipped) != widget!.key);
        final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
        return Transform(
          transform: Matrix4.rotationY(value),
          child: widget,
          alignment: Alignment.center,
        );
      },

    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home'),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: <Widget>[
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 3),
                duration: Duration(seconds: 3),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crop_info(),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crops(
                    image: 'assets/wheat.jpeg',
                    flipped: isFlipped,
                  ),
                ),
                transitionBuilder: transition,
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 3),
                duration: Duration(seconds: 3),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crop_info(),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crops(
                    image: 'assets/cotton.PNG',
                    flipped: isFlipped,
                  ),
                ),
                transitionBuilder: transition,
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 3),
                duration: Duration(seconds: 3),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crop_info(),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crops(
                    image: 'assets/jute.PNG',
                    flipped: isFlipped,
                  ),
                ),
                transitionBuilder: transition,
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 3),
                duration: Duration(seconds: 3),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crop_info(),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crops(
                    image: 'assets/maize.PNG',
                    flipped: isFlipped,
                  ),
                ),
                transitionBuilder: transition,
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 3),
                duration: Duration(seconds: 3),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crop_info(),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crops(
                    image: 'assets/millets.PNG',
                    flipped: isFlipped,
                  ),
                ),
                transitionBuilder: transition,
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 3),
                duration: Duration(seconds: 3),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crop_info(),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped = !isFlipped;
                    });
                  },
                  child: Crops(
                    image: 'assets/rice.PNG',
                    flipped: isFlipped,
                  ),
                ),
                transitionBuilder: transition,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Crop_info extends StatelessWidget {
  const Crop_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        // left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),

      key: Key('second'),
      decoration: BoxDecoration(
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
      width: size.width*0.65,
      height: size.height*0.35,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('hello you flipped the card'),
      ),
    );
  }
}




class Crops extends StatelessWidget {
  const Crops({Key? key, required this.flipped, required this.image}) : super(key: key);

  final bool flipped;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: Key('first'),
      decoration: BoxDecoration(
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
      margin: EdgeInsets.only(
        // left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      width: size.width*0.65,
      height: size.height*0.35,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            height: size.height*0.25,
            child: Image.asset(
              image,
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
              // boxShadow: [
              //   BoxShadow(
              //     offset: Offset(0,10),
              //     blurRadius: 50,
              //     color: Colors.black.withOpacity(0.23),
              //   ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
