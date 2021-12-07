import 'package:farmer_merchant/home/home.dart';
import 'package:farmer_merchant/home/home1.dart';
import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:farmer_merchant/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return either home or Authenticate

    final user = Provider.of<FUser?>(context);
    // print(user);
    if (user== null)
      {
        return Authenticate();

      } else{
      return Home();
    }

    return Authenticate();
  }
}