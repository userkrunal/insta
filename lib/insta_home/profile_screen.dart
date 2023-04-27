import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        leading: Icon(Icons.lock_outline_rounded, color: Colors.white),
        title: Text("Pro_Developer",
            style: TextStyle(
                color: Colors.
                white,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.add_box_outlined, color: Colors.white),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.menu_rounded, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/img_7.png"),
                    ),
                    Text(
                      "😎_flutter_dev_😎",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                    )
                  ],
                ),
                Info(12, "Posts"),
                Info(900, "Followers"),
                Info(10, "Following")
              ],
            ),  // Profile
            SizedBox(height: 5),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                        height: 30,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white24),
                        child: Text("Edit profile",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.black12),
                      child: Icon(Icons.person_add_outlined,color: Colors.white,size: 20,),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Highlights("assets/img.png"),
                 SizedBox(width: 5),
                 Highlights("assets/img_7.png"),
                    SizedBox(width: 5),
                    Highlights("assets/img_20.png"),
                    SizedBox(width: 5),
                 Highlights("assets/img_21.png"),
                    SizedBox(width: 5),
                    Highlights("assets/img_30.png"),
                  ],
                ),
              ),
            ),
            Row(children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 30,
                              width: 150,
                              alignment: Alignment.center,
                              child: Icon(Icons.grid_on_sharp,color: Colors.white,)),
                          Container(height: 30,
                              width: 150,
                              alignment: Alignment.center,
                              child: Icon(Icons.assignment_ind_outlined,color: Colors.white,)),

                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Photos("assets/img_31.png"),
                          Photos("assets/img_11.png"),
                          Photos("assets/img_23.png"),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Highlights("assets/img_21.png"),
                      Highlights("assets/img_31.png"),
                      Highlights("assets/img_5.png"),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Photos("assets/img_3.png"),
                         Photos("assets/img_17.png"),
                         Photos("assets/img_18.png"),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Photos("assets/img_12.png"),
                        Photos("assets/img_13.png"),
                        Photos("assets/img_14.png"),
                        ],),
                    ),
                  ],
                ),
              )
            ],),



          ],
        ),
      ),
    );
  }

  Widget Info(int number, String name) {
    return Column(
      children: [
        Text("$number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)),
        Text("$name", style: TextStyle(fontSize: 15,color: Colors.white)),
      ],
    );
  }

  Widget Photos(String iphoto)
  {
    return Container(
        height: 110,
        width: 110,
        child: Image.asset("$iphoto",fit: BoxFit.cover,),
        decoration: BoxDecoration(border: Border.all(color: Colors.lightBlueAccent.shade100,width: 2))
    );
  }

  Widget Highlights(String ihigh)
  {
    return Container(
      height: 80,width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.yellowAccent,Colors.pinkAccent]),),
      child: Container(width: 76,height: 76,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white)),child: CircleAvatar(radius: 35,backgroundImage: AssetImage("$ihigh"),),),

    );
  }
}
