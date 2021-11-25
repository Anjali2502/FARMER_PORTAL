import 'dart:ffi';

import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:farmer_merchant/services/User_Database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navBar.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController? _controller1 = new TextEditingController();
  String fullname="";
  String em="";
  String phno="";
  String state="";
  String city="";
  String wheat_price="";
  String wheat_qty="";
  String rice_price="";
  String rice_qty="";
  String maize_price="";
  String maize_qty="";
  String millets_price="";
  String millets_qty="";
  String jute_price="";
  String jute_qty="";
  String cotton_price="";
  String cotton_qty="";
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FUser?>(context);
    return StreamBuilder<FarmerData>(

      stream: DatabaseService(email:user!.email,uid: user.uid).farmerInfo,
      builder: (context,snapshot) {

        FarmerData? farmerData = snapshot.data;
        _controller1!.text=farmerData!.email!;


        return Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {
            //     setState(() {
            //       Navigator.pop(context);
            //     });
            //   },
            // ),
            title: Text('Account'),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.grey[300],
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Text(
                      'PERSONAL INFORMATION',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Full Name',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                      controller: TextEditingController(text: farmerData.fullname),
                    onChanged: (val){
                  setState(() {
                    fullname=val;
                  });
                },
                decoration:
                InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                  // labelText: labelText,
                  // labelStyle: TextStyle(
                  //   fontSize: 16,
                  // ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius:
                      BorderRadius.all(Radius.circular(35.0))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius:
                    BorderRadius.all(Radius.circular(35.0)),
                  ),

                ),

              ),
                  SizedBox(height: 20),
                  Text(
                    'Email',

                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(

                controller: _controller1,
                onChanged: (val) {
                   setState(() {
                  em=val;
                  });
                },

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                  // labelText: labelText,
                  // labelStyle: TextStyle(
                  //   fontSize: 16,
                  // ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "email",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white),
                      borderRadius:
                      BorderRadius.all(Radius.circular(35.0))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.white),
                    borderRadius:
                    BorderRadius.all(Radius.circular(35.0)),
                  ),
                ),
              ),
                  SizedBox(height: 20),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: TextEditingController(text: farmerData.phno),
                      onChanged: (val){
                        setState(() {
                        phno=val;
                        });
                        },
                      decoration:
                      InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                // labelText: labelText,
                // labelStyle: TextStyle(
                //   fontSize: 16,
                // ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: 'Enter Phone number',
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius:
                    BorderRadius.all(Radius.circular(35.0))
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius:
                  BorderRadius.all(Radius.circular(35.0)),
                ),

              ),

                  ),

                    SizedBox(height: 20),
                Text(
                  'State',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 5),
            TextField(
              controller: TextEditingController(text: farmerData.state),
              onChanged: (val){
                setState(() {
                  state=val;
                });

              },
              decoration:
              InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 6, left: 8),
                // labelText: labelText,
                // labelStyle: TextStyle(
                //   fontSize: 16,
                // ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: 'state',
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius:
                    BorderRadius.all(Radius.circular(35.0))
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius:
                  BorderRadius.all(Radius.circular(35.0)),
                ),

              ),

            ),
                  SizedBox(height: 20),
                  Text(
                    'City',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: TextEditingController(text: farmerData.city),


        onChanged: (val){
        setState(() {
          city=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "city",
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 25),
                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      'CROP INFORMATION',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('Wheat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Price (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(

//controller: fieldval,
                    controller: TextEditingController(text: farmerData.w_p),
        onChanged: (val){
        setState(() {
          wheat_price=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Price',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Quantity (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.w_q),
//controller: fieldval,

        onChanged: (val){
        setState(() {
          wheat_qty=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Quantity',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 15),
                  Text('Rice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Price (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(

//controller: fieldval,
                    controller: TextEditingController(text: farmerData.r_p),
        onChanged: (val){
        setState(() {
          rice_price=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Price',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Quantity (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(

//controller: fieldval,
                    controller: TextEditingController(text: farmerData.r_q),
        onChanged: (val){
      setState(() {
        rice_qty=val;
      });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Quantity',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 15),
                  Text('Maize',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Price (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(

//controller: fieldval,
                    controller: TextEditingController(text: farmerData.ma_p),
        onChanged: (val){
        setState(() {
          maize_price=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Price',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Quantity (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.ma_q),
//controller: fieldval,

        onChanged: (val){
        setState(() {
          maize_qty=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Quantity',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 15),
                  Text('Millets',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Price (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.mi_p),
//controller: fieldval,

        onChanged: (val){
        setState(() {
          millets_price=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Price',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Quantity (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.mi_q),
//controller: fieldval,

        onChanged: (val){
        setState(() {
          millets_qty=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Quantity',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 15),
                  Text('Jute',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Price (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.j_p),
//controller: fieldval,

        onChanged: (val){
      setState(() {
        jute_price=val;
      });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Price',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Quantity (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.j_q),
//controller: fieldval,

        onChanged: (val){
        setState(() {
          jute_qty=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Quantity',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 15),
                  Text('Cotton',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Price (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(

//controller: fieldval,
          controller: TextEditingController(text: farmerData.c_p),
        onChanged: (val){
       setState(() {
         cotton_price=val;
       });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Price',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  SizedBox(height: 8),
                  Text(
                    'Crop Quantity (per Quintal)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: farmerData.c_q),
//controller: fieldval,

        onChanged: (val){
        setState(() {
          cotton_qty=val;
        });
        },
        decoration:
        InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6, left: 8),
        // labelText: labelText,
        // labelStyle: TextStyle(
        //   fontSize: 16,
        // ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Crop Quantity',
        hintStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(35.0)),
        ),

        ),

        ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue),
                    ),
                    onPressed: () {
                      DatabaseService(uid: user.uid,email: user.email).updateDocFields(fullname, phno, state, city, wheat_price,wheat_qty, rice_price, rice_qty, maize_price, maize_qty, millets_price, millets_qty, jute_price, jute_qty, cotton_price, cotton_qty);

                    },
                    child: Text('Save'),
                  )

                ],
              ),
            ),
          ),
        );
      }
    );

  }
// TextField buildTextField(String labelText, String placeholder) {
//   return TextField(
//     onChanged: (val) {
//       setState(() {
//
//       });
//     },
//     decoration: InputDecoration(
//         contentPadding: EdgeInsets.only(bottom: 6),
//         labelText: labelText,
//         labelStyle: TextStyle(
//           fontSize: 16,
//         ),
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         hintText: placeholder,
//         hintStyle: TextStyle(
//           fontSize: 16,
//           color: Colors.black,
//         ),
//       // focusedBorder: OutlineInputBorder(
//       //     borderSide: BorderSide(color:Colors.white),
//       //     borderRadius:
//       //     BorderRadius.all(Radius.circular(35.0))
//       // ),
//       // enabledBorder: OutlineInputBorder(
//       //   borderSide: BorderSide(color:Colors.white),
//       //   borderRadius:
//       //   BorderRadius.all(Radius.circular(35.0)),
//       // ),
//     ),
//   );
// }
}

  class BuildTextField extends StatelessWidget {
   BuildTextField({Key? key, required this.placeholder,required this.fieldval}) : super(key: key);
  
  final String placeholder;
  String fieldval;

  @override
  Widget build(BuildContext context) {
    return TextField(

//controller: fieldval,

     onChanged: (val){
       fieldval=val;
     },
       decoration:
       InputDecoration(
         contentPadding: EdgeInsets.only(bottom: 6, left: 8),
         // labelText: labelText,
         // labelStyle: TextStyle(
         //   fontSize: 16,
         // ),
         floatingLabelBehavior: FloatingLabelBehavior.always,
         hintText: placeholder,
         hintStyle: TextStyle(
           fontSize: 16,
           color: Colors.black,
         ),
         focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.white),
             borderRadius:
             BorderRadius.all(Radius.circular(35.0))
         ),
         enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.white),
           borderRadius:
           BorderRadius.all(Radius.circular(35.0)),
         ),

       ),

    );
  }
}

