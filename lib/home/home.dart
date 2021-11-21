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

  bool isFlipped1 = false;
  bool isFlipped2 = false;
  bool isFlipped3 = false;
  bool isFlipped4 = false;
  bool isFlipped5 = false;
  bool isFlipped6 = false;

  // Widget transition(Widget widget, Animation<double> animation) {
  //
  //   final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);
  //
  //   return AnimatedBuilder(
  //     animation: flipAnimation,
  //     child: widget,
  //     builder: (context,widget){
  //
  //       final isUnder = (ValueKey(isFlipped) != widget!.key);
  //       final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
  //       return Transform(
  //         transform: Matrix4.rotationY(value),
  //         child: widget,
  //         alignment: Alignment.center,
  //       );
  //     },
  //
  //   );
  // }

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
                reverseDuration: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped1 ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped1 = !isFlipped1;
                    });
                  },
                  child: Crop_info(
                    info: 'Wheat is a grass widely cultivated for its seed, a cereal grain which is a worldwide staple food. The many species of wheat together make up the genus Triticum; the most widely grown is common wheat (T. aestivum). The archaeological record suggests that wheat was first cultivated in the regions of the Fertile Crescent around 9600 BCE. Botanically, the wheat kernel is a type of fruit called a caryopsis. Wheat is an important source of carbohydrates. Globally, it is the leading source of vegetable protein in human food, having a protein content of about 13%, which is relatively high compared to other major cereals but relatively low in protein quality for supplying essential amino acids. When eaten as the whole grain, wheat is a source of multiple nutrients and dietary fiber.',
                  ),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped1 = !isFlipped1;
                    });
                  },
                  child: Crops(
                    image: 'assets/wheat.PNG',
                    name: 'Wheat',
                    pr1: 1913.00,
                    pr2: 2100.00,
                    pr3: 1750.00,
                  ),
                ),
                transitionBuilder: (Widget widget, Animation<double> animation) {

              final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

              return AnimatedBuilder(
              animation: flipAnimation,
              child: widget,
              builder: (context,widget){

              final isUnder = (ValueKey(isFlipped1) != widget!.key);
              final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
              return Transform(
              transform: Matrix4.rotationY(value),
              child: widget,
              alignment: Alignment.center,
              );
              },

              );
              },
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped2 ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped2 = !isFlipped2;
                    });
                  },
                  child: Crop_info(
                    info: 'Cotton is a soft, fluffy staple fiber that grows in a boll, or protective case, around the seeds of the cotton plants of the genus Gossypium in the mallow family Malvaceae.The fiber is most often spun into yarn or thread and used to make a soft, breathable, and durable textile.Temperature: 25°C is ideal for cotton cultivation. Rainfall: 150 cm to 200 cm rainfall is essential for cotton farming. Moisture in the wind is necessary. Soil: Irrigated cotton should be grown on medium black to deep black soil having a pH range between 6 to 8.',
                  ),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped2 = !isFlipped2;
                    });
                  },
                  child: Crops(
                    image: 'assets/cotton.PNG',
                    name: 'Cotton',
                    pr1: 6300.00,
                    pr2: 6360.00,
                    pr3: 6200.00,
                  ),
                ),
                transitionBuilder: (Widget widget, Animation<double> animation) {

              final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

              return AnimatedBuilder(
              animation: flipAnimation,
              child: widget,
              builder: (context,widget){

              final isUnder = (ValueKey(isFlipped2) != widget!.key);
              final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
              return Transform(
              transform: Matrix4.rotationY(value),
              child: widget,
              alignment: Alignment.center,
              );
              },

              );
              },
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped3 ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped3 = !isFlipped3;
                    });
                  },
                  child: Crop_info(
                    info: 'Jute is a long, soft, shiny bast fiber that can be spun into coarse, strong threads.Jute is one of the most affordable natural fibers, and second only to cotton in the amount produced and variety of uses. ute requires 160–200 cm of rainfall yearly with extra needed during the sowing period. River basins or alluvial or loamy soils are best for jute cultivation. Jute cultivation in red soils may require high dose of manure and pH range between 4.8 and 5.8 is best for its cultivation. Plain land or gentle slope or low land is ideal for jute cultivation. Since the jute seeds are small in size, land should be prepared to fine tilling, which can be done by careful ploughing.',
                  ),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped3 = !isFlipped3;
                    });
                  },
                  child: Crops(
                    image: 'assets/jute.PNG',
                    name: 'Jute',
                    pr1: 6567.00,
                    pr2: 7200.00,
                    pr3: 5800.00,
                  ),
                ),
                transitionBuilder: (Widget widget, Animation<double> animation) {

              final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

              return AnimatedBuilder(
              animation: flipAnimation,
              child: widget,
              builder: (context,widget){

              final isUnder = (ValueKey(isFlipped3) != widget!.key);
              final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
              return Transform(
              transform: Matrix4.rotationY(value),
              child: widget,
              alignment: Alignment.center,
              );
              },

              );
              },
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped4 ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped4 = !isFlipped4;
                    });
                  },
                  child: Crop_info(
                    info: 'Maize or Indian corn(called corn in some countries) is Zea mays, a member of the grass family Poaceae. It is a cereal grain .Maize is a leafy stalk whose kernels have seeds inside. It is an angiosperm, which means that its seeds are enclosed inside a fruit or shell.People have long eaten sweet corn and popcorn with little processing, and other kinds after processing into flour for making cornbread, tortillas, and other artificial foods. maize is used as livestock feed, as human food, as biofuel, and as raw material in industry.',
                  ),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped4 = !isFlipped4;
                    });
                  },
                  child: Crops(
                    image: 'assets/maize.PNG',
                    name: 'Maize',
                    pr1: 1805.00,
                    pr2: 1970.00,
                    pr3: 1600.00,
                  ),
                ),
                transitionBuilder: (Widget widget, Animation<double> animation) {

              final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

              return AnimatedBuilder(
              animation: flipAnimation,
              child: widget,
              builder: (context,widget){

              final isUnder = (ValueKey(isFlipped4) != widget!.key);
              final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
              return Transform(
              transform: Matrix4.rotationY(value),
              child: widget,
              alignment: Alignment.center,
              );
              },

              );
              },
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped5 ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped5 = !isFlipped5;
                    });
                  },
                  child: Crop_info(
                    info: 'Millets are a group of highly variable small-seeded grasses, widely grown around the world as cereal crops or grains for fodder and human food.They are highly tolerant of drought and other extreme weather conditions and have a similar nutrient content to other major cereals.Millets, however, do respond to high fertility and moisture. On a per-hectare basis, millet grain production can be 2–4 times higher with use of irrigation and soil supplements. Improved breeds of millet with enhanced disease resistance and can significantly increase farm yield.',
                  ),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped5 = !isFlipped5;
                    });
                  },
                  child: Crops(
                    image: 'assets/millets.PNG',
                    name: 'Millets',
                    pr1: 1250.00,
                    pr2: 1300.00,
                    pr3: 1200.00,
                  ),
                ),
                transitionBuilder: (Widget widget, Animation<double> animation) {

              final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

              return AnimatedBuilder(
              animation: flipAnimation,
              child: widget,
              builder: (context,widget){

              final isUnder = (ValueKey(isFlipped5) != widget!.key);
              final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
              return Transform(
              transform: Matrix4.rotationY(value),
              child: widget,
              alignment: Alignment.center,
              );
              },

              );
              },
              ),
              AnimatedSwitcher(
                reverseDuration: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                switchInCurve: Curves.ease,
                switchOutCurve: Curves.ease,
                child: isFlipped6 ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped6 = !isFlipped6;
                    });
                  },
                  child: Crop_info(
                    info: 'Rice (Oryza sativa) is a type of cereal and food. In origin, it is a swamp grass. It is eaten as staple food in many parts of Asia. It is grown in warm parts of the world, mainly Asia, Africa, northern Italy, and the west coast of North America.Rice used to be the main diet in many countries. Various kinds of food processing prepare rice for eating. It is usually cooked.Rice is usually planted in a flat field filled with water. Before cropping, the water is drained from the field. Rice contains a lot of carbohydrates. There are different ways of milling rice. Brown rice has only had the outer layer removed. It contains more fibre than the completely milled white rice.',
                  ),
                ) : GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlipped6 = !isFlipped6;
                    });
                  },
                  child: Crops(
                    image: 'assets/rice.PNG',
                    name: 'Rice',
                    pr1: 2798.00,
                    pr2: 5500.00,
                    pr3: 2000.00,
                  ),
                ),
                transitionBuilder: (Widget widget, Animation<double> animation) {

              final flipAnimation = Tween(begin: pi,end: 0.0).animate(animation);

              return AnimatedBuilder(
              animation: flipAnimation,
              child: widget,
              builder: (context,widget){

              final isUnder = (ValueKey(isFlipped6) != widget!.key);
              final value = isUnder ? min(flipAnimation.value,pi/2) : flipAnimation.value;
              return Transform(
              transform: Matrix4.rotationY(value),
              child: widget,
              alignment: Alignment.center,
              );
              },

              );
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Crop_info extends StatelessWidget {
  const Crop_info({Key? key, required this.info}) : super(key: key);

  final String info;

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
      width: size.width*0.75,
      height: size.height*0.45,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Information',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 4),
            Text(info),
          ],
        ),
      ),
    );
  }
}


class Crops extends StatelessWidget {
  const Crops({Key? key,
    required this.image,
    required this.name,
    required this.pr1,
    required this.pr2,
    required this.pr3}) : super(key: key);

  final String image, name;
  final double pr1, pr2, pr3;

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
      width: size.width*0.75,
      height: size.height*0.45,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                // height: size.height*0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: size.height*0.2,
            padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 6.0),
                Text('Average Price:- Rs $pr1'),
                Text('INR/Quintal'),
                SizedBox(height: 6.0),
                Text('Costiliest Market Price:- Rs $pr2'),
                Text('INR/Quintal'),
                SizedBox(height: 6.0),
                Text('Cheapest Market Price:- Rs $pr3'),
                Text('INR/Quintal'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
