import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DisplayError extends StatelessWidget {
  final String handle;
  const DisplayError({super.key,required this.handle});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(221, 32, 29, 29),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Container(
          child: Text('We regret to inform you that $handle made a strict policy of not fetching the data',style: TextStyle(fontFamily: "a",fontSize: 30,color: Colors.white),),
        ),
      ),
    );
  }
}