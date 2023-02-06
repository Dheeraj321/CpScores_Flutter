import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'DisplayError.dart';
import 'Handle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 32, 29, 29),
      body: Container(
       padding: EdgeInsets.fromLTRB(0, 50,0, 0),
        child: Column(children: [
          Container(
            alignment: AlignmentDirectional.center,
            padding: EdgeInsets.all(15),
            height: height*0.2,
            width: width*1.0,
              child: Text("Select One Handle",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "a"
              ),
              ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(width*0.5, 10, 10, 10),
            child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>InputHandle(name:"CodeChef")));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3.0,
                    minimumSize: Size(150,120),
                    backgroundColor:Color.fromARGB(221, 66, 60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(' CodeChef',
                  style: TextStyle(fontSize: 20),
                  )
                  ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(width*0.5, 10, 10, 10),
            child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayError(handle: 'LeetCode')));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3.0,
                    minimumSize: Size(150,120),
                    backgroundColor:Color.fromARGB(221, 66, 60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text('LeetCode',
                  style: TextStyle(fontSize: 20),
                  )
                  ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(width*0.5, 10, 10, 10),
            child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayError(handle: 'AtCoder')));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3.0,
                    minimumSize: Size(150,120),
                    backgroundColor:Color.fromARGB(221, 66, 60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text('AtCoder',
                  style: TextStyle(fontSize: 20),
                  )
                  ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(width*0.5, 10, 10, 10),
            child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayError(handle: 'CodeForces')));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3.0,
                    minimumSize: Size(150,120),
                    backgroundColor:Color.fromARGB(221, 66, 60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text('CodeForces',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1
                    ),
                  )
                  ),
          )
        ],),
      ),
    );
  }
}