import 'package:farmer_merchant/home/google_map_screen.dart';
import 'package:farmer_merchant/home/navBar.dart';
import 'package:flutter/material.dart';

class APMC extends StatefulWidget {
  const APMC({Key? key}) : super(key: key);

  @override
  _APMCState createState() => _APMCState();
}

class _APMCState extends State<APMC> {

  String bullet = "\u2022 ";

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('What is APMC?',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0,0),
                        blurRadius: 3,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]
                ),
              ),
              SizedBox(height: 15),
              Text('An Agricultural Produce Market Committee (APMC) is a marketing board established by state governments in India to ensure farmers are safeguarded from exploitation by large retailers, as well as ensuring the farm to retail price spread does not reach excessively high levels. APMCs are regulated by states through their adoption of a Agriculture Produce Marketing Regulation (APMR) Act.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                  width: size.width*0.85,
                  height: size.height*0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/apmc.PNG'),
                      colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.72), BlendMode.dstATop),
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
                        offset: Offset(2,0),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.23),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text('Some of the salient features of the APMC Model Act 2003 include:',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 1),
              Text('$bullet Facilitating contract farming model.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 1),
              Text('$bullet Special market for perishables',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 1),
              Text('$bullet Allowing farmers and private persons to set up their own market.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 1),
              Text('$bullet Relaxation of licensing norms.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 1),
              Text('$bullet Single market fee',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 1),
              Text('$bullet APMC revenue to be used for improving market infrastructure.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 8),
              Text('All the food produce must be brought to the market and sales are made through auction. The market place i.e, Mandi is set up in various places within the states. These markets geographically divide the state. Licenses are issued to the traders to operate within a market. The mall owners, wholesale traders, retail traders are not given permission to purchase the produce from the farmers directly.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 8),
              Text('Agricultural Produce Market Committee (APMC) Yard / Regulated Market Committees (RMC) Yard is any place in the market area managed by a Market Committee, for the purpose of regulation of marketing of notified agricultural produce and livestock in physical, electronic or other such mode. -The place shall include any structure, enclosure, open space locality, street including warehouse/silos/pack house/cleaning, grading , packaging and processing unit pesent in the Market Committee of the defined market area.',
                style: TextStyle(
                  fontSize: size.height*0.02,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text('TRACK LOACTION',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
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
              SizedBox(height: 25),
              Center(
                child: Stack(
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
                       onPressed: () {
                         MapUtils.openMap(29.6857, 76.9905);
                       },
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

