import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navBar.dart';

class Loan extends StatefulWidget {
  const Loan({Key? key}) : super(key: key);

  @override
  _LoanState createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  String bullet = "\u2022 ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Loan Page'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(4),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              children: [
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  // textDirection: TextDirection.rtl,
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        Text(
                        'Name of the bank',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Agriculture loan schemes offered',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Text('State Bank of India',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('$bullet Crop Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Kisan Credit Card'),
                              SizedBox(height: 1),
                              Text('$bullet Multipurpose Gold Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Tractor Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Combine Harvestor Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Drip Irrigation Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Dairy Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Poultry Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Fisheries Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Produce Marketing Loan'),
                              SizedBox(height: 1),
                              Text('$bullet Setting up of Agri Clinic and Agri Business Centres'),
                              SizedBox(height: 1),
                              Text('$bullet Land Purchase Scheme'),
                              SizedBox(height: 1),
                              Text('$bullet SBI Krishak Uthan Yojana'),
                              SizedBox(height: 1),
                              Text('$bullet Scheme for Debt Swapping of Borrowers')
                            ],
                          ),
                        )
                      ]
                    ),
                    TableRow(
                        children: [
                          Text('National Bank for Agriculture and Rural Development (NABARD)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$bullet Capital Investment Subsidy Scheme for Commercial Production Units for organic/ biological Inputs'),
                                SizedBox(height: 1),
                                Text('$bullet Agriclinic and Agribusiness Centres Scheme'),
                                SizedBox(height: 1),
                                Text('$bullet National Livestock Mission'),
                              ],
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Text('Karur Vysya Bank',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$bullet Green Card / Green Card Plus (Kisan Card)'),
                                SizedBox(height: 1),
                                Text('$bullet Green Harvester'),
                                SizedBox(height: 1),
                                Text('$bullet Green Trac'),
                                SizedBox(height: 1),
                                Text('$bullet Warehouse Receipt Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Jewel Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Kisan Tatkal'),
                                SizedBox(height: 1),
                                Text('$bullet Green Car'),
                                SizedBox(height: 1),
                                Text('$bullet Loans for Horticulture Projects'),
                                SizedBox(height: 1),
                                Text('$bullet Two-Wheeler Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Dairy Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Poultry Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Pisciculture Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Loans for SHG-JLG'),
                              ],
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Text('ICICI Bank',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$bullet Farmer Finance / Agriculture Loan/ Krishi Loan'),
                                SizedBox(height: 1),
                                Text('$bullet Tractor Loan'),
                              ],
                            ),
                          )
                        ]
                    ),
                    TableRow(
                        children: [
                          Text('IndusInd Bank',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$bullet Production Loan (CC)'),
                                SizedBox(height: 1),
                                Text('$bullet Investment Loan (TL)'),
                                SizedBox(height: 1),
                                Text('$bullet Hi-Tech Agriculture (OD)'),
                                SizedBox(height: 1),
                                Text('$bullet Hi-Tech Agriculture (TL)'),
                              ],
                            ),
                          )
                        ]
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  'Contact us',
                  style: TextStyle(
                    fontSize: 25,
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
                SizedBox(height: 20),
                TextField(
                  onChanged: (val){},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Enter your email id',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius:
                        BorderRadius.all(Radius.circular(35.0))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius:
                      BorderRadius.all(Radius.circular(35.0)),
                    ),

                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (val){},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Enter email id of bank',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius:
                        BorderRadius.all(Radius.circular(35.0))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius:
                      BorderRadius.all(Radius.circular(35.0)),
                    ),

                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (val){},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Enter your message',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius:
                        BorderRadius.all(Radius.circular(35.0))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius:
                      BorderRadius.all(Radius.circular(35.0)),
                    ),

                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.black,
                  onPressed: () {},
                  child: Text('Send message',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
