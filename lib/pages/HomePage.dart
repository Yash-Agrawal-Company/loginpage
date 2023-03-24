
import 'package:flutter/material.dart';

import '/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Material(
      
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page" , style: TextStyle(color: Colors.black),),
          centerTitle: true,
           backgroundColor: Colors.white, 
          elevation: 1.0,
          iconTheme: const IconThemeData(color: Colors.black45),
          
          ),
        body: Center(
          child: Container(
            height: 400,
            width: 500,
            color: Colors.lightBlueAccent,
            child:Center(child: Text("Home Page",style: TextStyle(fontSize: 30.0,color: Colors.white),)),
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
