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
        title: Text("Animate_ddo"),
        actions: <Widget>
        [
          IconButton
          (
            icon: FaIcon(FontAwesomeIcons.twitch,color: Colors.white),
            onPressed: (){},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: (){},
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