import 'dart:ffi';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final Map<String, dynamic> mp;
  const Result({super.key,required this.mp});
  @override
  State<Result> createState() => _ResultState();
}
class _ResultState extends State<Result> {
   Map<String,dynamic>mp2 ={};
  _loadData(Map<String,dynamic>mp3){
     mp2 = mp3;
     print(mp2.length);
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    _loadData(widget.mp);
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 32, 29, 29),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, height * 0.2, 10, 10),
        child: Container(
          
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              var key = widget.mp.keys.elementAt(index);
              return Container(
                padding: EdgeInsets.all(10),
                color: Color.fromARGB(221, 66, 60, 60),
                child: ListTile(
                  title: Text(key,style: TextStyle(color: Colors.white,fontFamily: "a",fontSize: 20),),
                  subtitle: Text(widget.mp[key].toString(),style: TextStyle(color: Colors.white,fontFamily: "a",fontSize: 15),),
                ),
              );
            },
            itemCount: widget.mp.length,
          ),
        ),
      ),
    );
  }
}
