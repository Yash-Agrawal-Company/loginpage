
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightBlueAccent,
      child: ListView(
        children: const [
          DrawerHeader(

              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
                accountName: Text("Yash Agrawal"),
                accountEmail: Text("yashagrawal9319029562@gmail.com"),
                margin: EdgeInsets.all(0.0),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/photo2.jpg",
                )
                ),
              ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2 ,
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.white,
            ),
            title: Text(
              "Add an account",
              textScaleFactor: 1.2 ,
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_phone_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Contact",
              textScaleFactor: 1.2 ,
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
            title: Text(
              "Help ",
              textScaleFactor: 1.2 ,
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}



