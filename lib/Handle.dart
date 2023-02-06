import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:http/http.dart' as http;
import 'DisplayError.dart';
import 'result.dart';
import 'dart:convert';


class InputHandle extends StatefulWidget {
  final String name;
  final String id = '';
  const InputHandle({required this.name});

  @override
  State<InputHandle> createState() => _InputHandleState();
}

class _InputHandleState extends State<InputHandle> {
  Map<String,dynamic>mp ={};
 final TextEditingController _controller = TextEditingController();
  Future<Map<String,dynamic>> GetData(String id) async{
    if(widget.name == "CodeChef"){
    final url = 'https://www.codechef.com/users/$id';
    final response = await http.get(Uri.parse(url));
    final soup = BeautifulSoup(response.body);
    final name = soup.find("span", class_: "m-username--link");
    final rating = soup.find("a", class_: "rating");
    var stars = soup.find('span', class_:'rating');
    final lr = soup.find("span", class_: "rating-difference");
    final content = soup.find("div", class_: "content");
    final ratingg = soup.find("div", class_: "rating-number");
    final strong_tags = soup.find('strong');
    print(strong_tags);
    String platFormName = 'CodeChef';
    var solved;
    if (content != null) {
           solved = content.find("h5")?.text.split("(")[1].split(")")[0];
      }

    var ratingValue = '';
    if (rating != null) {
      final ratingText = rating.text;
      final splitRating = ratingText.split(" ");
      ratingValue = splitRating[0];
    }
    mp.addEntries([
      MapEntry('Name', name?.text??''),
      MapEntry('Rating',ratingValue),
      MapEntry('Stars',stars?.text??''),
      MapEntry('LastRating',lr?.text??''),
      MapEntry('Total Problems Solved',solved),
      MapEntry('Rating',ratingg?.text??''),
      MapEntry('PlatForm',platFormName)
    ]);
    print("asd");
    print(mp.length);
  }
  else if(widget.name == 'CodeForces' || widget.name == 'AtCoder'|| widget.name == 'LeetCode'){
    Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayError(handle: widget.name)));
  }
  return mp;
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 32, 29, 29),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50,0, 0),
        child: ListView(
          children: [
          Column(
            children: [
            Container(
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.all(15),
              height: height*0.2,
              width: width*1.0,
              child: Text("Enter ${widget.name} Handle",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "a"
              ),
              ),
            ),
            Container(
              width: width*1.0,
              height: height*0.4,
              padding: EdgeInsets.all(30),
              child: TextField(
                controller: _controller,
                style: TextStyle(color:Colors.white,fontSize:20,fontFamily: "a"),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Example - Naruto222A6",
                  hintStyle: TextStyle(fontSize: 20,fontFamily: "a",color: Colors.white) 
                  ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,color: Color.fromARGB(255, 216, 114, 114)),
                    borderRadius: BorderRadius.circular(20),
                  )
                  ),
              ),
            ),
            ElevatedButton(
  onPressed: () async {
    if (_controller.text.length == 0) {
      temp();
    } else {
      Map<String, dynamic> mp1 = await GetData(_controller.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Result(mp: mp1)));
    }
  },
  style: ElevatedButton.styleFrom(
    elevation: 3.0,
    minimumSize: Size(150, 120),
    backgroundColor: Color.fromARGB(221, 66, 60, 60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Submit',
    style: TextStyle(fontSize: 20),
  ),
),

          ]),
        ],),
      ),
    );
  }
  void temp(){
    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:Container(
                          alignment: Alignment.center,
                          height: 50,
                          child: Text("Please Provide A Valid Input",
                          style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontFamily: "a"
                          ),
                          ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white
                        ), 
                        ),
                        duration: Duration(seconds: 2),
                        )
                      );
  }
}


