import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'HomePage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome () async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 32, 29, 29),
      body: Container(
        color: Color.fromARGB(221, 32, 29, 29),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
           // color:Colors.white,
            padding: EdgeInsets.fromLTRB(20.0, screenHeight*0.10, 20, 20),
            width: screenWidth*1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "lib/Assets/cc.jpg",
              fit: BoxFit.fitWidth,
              ),
            )           
          ),
          Container(
            child: Row(children: [
              Container(
                width: screenWidth*0.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child:Image.asset("lib/Assets/ac.jpg")
                )),
                Container(
                width: screenWidth*0.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(46.0),
                  child:Image.asset("lib/Assets/cf.jpg")
                )),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top:20),
            //color:Colors.white,
            width: screenWidth*0.9,
            height: screenHeight*0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "lib/Assets/lc.jpg",
              fit: BoxFit.fitWidth,
              ),
            ),),
            Container(
              padding: EdgeInsets.all(20.0),
              child:Text("Cp Scores",style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontFamily: "a"
                ))
            ),
        ]),
      ),
    );
  }
}