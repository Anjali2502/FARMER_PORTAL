import 'package:farmer_merchant/home/account.dart';
import 'package:farmer_merchant/home/account1.dart';
import 'package:farmer_merchant/home/apmc.dart';
import 'package:farmer_merchant/home/home1.dart';
import 'package:farmer_merchant/services/auth.dart';
import 'package:flutter/material.dart';

class NavBar1 extends StatelessWidget {
  // const NavBar1({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            accountName: Text('sample'),
            accountEmail: Text('sample@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/farmers.PNG',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('APMC'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => APMC(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Account1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp),
            title: Text('logout'),
            onTap: () async{
              await _auth.signOut();
            },
          ),
          // FlatButton.icon(
          //     onPressed:() async{
          //       await _auth.signOut();
          //     },
          //     icon: Icon(Icons.logout_sharp,color: Colors.white),
          //     label: Text("logout",
          //       style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}
