import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

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
            accountName: Text('gegeef'),
            accountEmail: Text('abc@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
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
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('APMC'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Loan'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
