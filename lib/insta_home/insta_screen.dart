import 'package:flutter/material.dart';

class InstaScreen extends StatefulWidget {
  const InstaScreen({Key? key}) : super(key: key);

  @override
  State<InstaScreen> createState() => _InstaScreenState();
}

class _InstaScreenState extends State<InstaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.white),
        ),
        actions: [
          Icon(Icons.add_box_outlined, color: Colors.white),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.chat_outlined, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Status("assets/img_11.png"),
                      Status("assets/img_12.png"),
                      Status("assets/img_13.png"),
                    Status("assets/img.png"),
                    Status("assets/img_1.png"),
                    Status("assets/img_2.png"),
                    Status("assets/img_3.png"),
                    Status("assets/img_4.png"),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    Post("assets/img_5.png"),
                    Post("assets/img_6.png"),
                    Post("assets/img_7.png"),
                    Post("assets/img_8.png"),
                    Post("assets/img_9.png"),
                    Post("assets/img_10.png"),
                  ],
                ),
              ),
            )

            // Post(photo[1]),
            // Post(photo[2]),
          ],
        ),
      ),
    );
  }

  Widget Post(String iphoto) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "$iphoto",
          height: 350,
          width: 200,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border_rounded, size: 30,color: Colors.white,),
                  ),
                  Icon(Icons.add_comment_outlined, size: 30,color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.near_me_outlined, size: 30,color: Colors.white,),
                  )
                ],
              ),
              Icon(Icons.bookmark_border_outlined, size: 30,color: Colors.white,)
            ],
          ),
        )
      ],
    );
  }

  Widget Status(String ihigh)
  {
    return Container(
      height: 80,width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.pinkAccent]),),
      child: Container(width: 76,height: 76,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white)),child: CircleAvatar(radius: 35,backgroundImage: AssetImage("$ihigh"),),),
    );
  }

}
