import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navBar.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
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
              BuildTextField(
                  placeholder: 'Enter Name'),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 5),
              BuildTextField(
                  placeholder: 'Enter email'),
              SizedBox(height: 20),
              Text(
                'Phone Number',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 5),
              BuildTextField(
                  placeholder: 'Enter Phone number'),
              SizedBox(height: 20),
              Text(
                'State',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 5),
              BuildTextField(
                  placeholder: 'Enter State'),
              SizedBox(height: 20),
              Text(
                'City',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 5),
              BuildTextField(
                  placeholder: 'Enter City'),
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
              BuildTextField(placeholder: 'Enter crop price'),
              SizedBox(height: 8),
              Text(
                'Crop Quantity (per Quintal)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              BuildTextField(placeholder: 'Enter crop quantity'),
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
              BuildTextField(placeholder: 'Enter crop price'),
              SizedBox(height: 8),
              Text(
                'Crop Quantity (per Quintal)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              BuildTextField(placeholder: 'Enter crop quantity'),
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
              BuildTextField(placeholder: 'Enter crop price'),
              SizedBox(height: 8),
              Text(
                'Crop Quantity (per Quintal)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              BuildTextField(placeholder: 'Enter crop quantity'),
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
              BuildTextField(placeholder: 'Enter crop price'),
              SizedBox(height: 8),
              Text(
                'Crop Quantity (per Quintal)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              BuildTextField(placeholder: 'Enter crop quantity'),
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
              BuildTextField(placeholder: 'Enter crop price'),
              SizedBox(height: 8),
              Text(
                'Crop Quantity (per Quintal)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              BuildTextField(placeholder: 'Enter crop quantity'),
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
              BuildTextField(placeholder: 'Enter crop price'),
              SizedBox(height: 8),
              Text(
                'Crop Quantity (per Quintal)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              BuildTextField(placeholder: 'Enter crop quantity'),
            ],
          ),
        ),
      ),
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
  const BuildTextField({Key? key, required this.placeholder}) : super(key: key);
  
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return TextField(
          onChanged: (val) {
            // setState(() {
            //
            // });
          },
          decoration: InputDecoration(
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
    );
  }
}

