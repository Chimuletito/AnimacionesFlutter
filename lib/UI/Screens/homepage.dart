import 'package:animatedo/UI/Screens/Secondpage.dart';
import 'package:animatedo/UI/Screens/navigationpage.dart';
import "package:animatedo/UI/Screens/twitterpage.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget
 {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: FadeOut(child: Text("Animate_ddo"),duration: Duration(milliseconds: 5000),),
        actions: <Widget>
        [
          IconButton
          (
            icon: FaIcon(FontAwesomeIcons.twitter,color: Colors.white),
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> TwitterPage()));
            },
          ),
          SlideInLeft
          (
            child: IconButton
            (
              icon: Icon(Icons.navigate_next),
              onPressed:() {Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => SecondPage()));}
            ),
            from: 100,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NavigatorPage()));
        },
        child: FaIcon(FontAwesomeIcons.play),
      ),
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            ElasticIn(child: Icon(Icons.new_releases,color: Colors.blue,size: 40),delay: Duration(milliseconds: 1100),),
            FadeInDown(child:Text("Titulo",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w200)),delay: Duration(milliseconds: 400),),
            FadeInDown(child: Text("Pequeño titulo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),delay: Duration(milliseconds: 1000),),
            FadeInLeft(child: Container(width: 220,height: 2,color: Colors.blue),delay: Duration(milliseconds: 1100),)
          ],
        ),
      ),
    );
  }
}