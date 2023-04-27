import 'package:flutter/material.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 80),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Notifications",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
                  ],),
              ),
              SizedBox(height: 30),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Follow requests", style: TextStyle(fontSize: 18,color: Colors.white)),
                          Text("Approve or ignore requests",style: TextStyle(fontSize: 14,color: Colors.white)),
                        ],
                      ),),
                  ),
                ],),
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Notes("Himalya", "Modi", 10, "assets/img_1.png"),
                  Notes("You", "Amit", 50, "assets/img_3.png"),
                  Notes("Keval", "Rahul", 1000, "assets/img_4.png"),
                  Notes("Mehir", "Virat", 60, "assets/img_5.png"),
                  Notes("Meet", "Dhoni", 50, "assets/img_6.png"),
                  Notes("Viren", "Viral", 950, "assets/img_7.png"),
                  Notes("Darshan", "Patel", 70, "assets/img_8.png"),
                ],
              ),

            ],

          ),
        ),
      ),


    );
  }

  Widget Notes( String p1, String p2, int no, String iphoto)
  {
    return Container(
      height: 70,
      child: Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "$iphoto",
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 15),
          RichText(text: TextSpan(children: [
            TextSpan(text: "$p1 , $p2  & $no",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white70)),
            TextSpan(text: " others liked your photo.",style: TextStyle(fontSize: 11,color: Colors.white)),
          ],))
        ],
      ),
    );
  }
}
