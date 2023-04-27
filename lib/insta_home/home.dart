import 'package:flutter/material.dart';
import 'package:untitled2/insta_home/insta_screen.dart';
import 'package:untitled2/insta_home/likees_screen.dart';
import 'package:untitled2/insta_home/profile_screen.dart';
import 'package:untitled2/insta_home/search_screen.dart';

class InstaMain extends StatefulWidget {
  const InstaMain({Key? key}) : super(key: key);

  @override
  State<InstaMain> createState() => _InstaMainState();
}
int i = 0;
Color c2 = Colors.black12;
Color c1 = Colors.black;

Color home = c1;
Color search = c2, profile = c2, like = c2;

class _InstaMainState extends State<InstaMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
            height: 50,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(onTap: () {
                  setState(() {
                    i = 0;
                    home = c1;
                    search = c2;
                    like = c2;
                    profile = c2;

                  });
                },
                    child: Icon(Icons.home_outlined,color: home)),
                GestureDetector(onTap: () {
                  setState(() {
                    i = 1;
                    home = c2;
                    search = c1;
                    like = c2;
                    profile = c2;
                  });
                },
                    child: Icon(Icons.search,color: search)),
                GestureDetector(onTap: () {
                  setState(() {
                    i = 2;
                    home = c2;
                    search = c2;
                    like = c1;
                    profile = c2;
                  });
                },
                    child: Icon(Icons.favorite_outline_rounded,color: like)),
                GestureDetector(onTap: () {
                  setState(() {
                    i = 3;
                    home = c2;
                    search = c2;
                    like = c2;
                    profile = c1;
                  });
                },
                    child: Icon(Icons.person_outline_rounded,color: profile)),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: i,
                  children: [
                    InstaScreen(),
                    SearchScreen(),
                    LikesScreen(),
                    ProfileScreen(),
                  ],
                ),
              ),
            ],
          )

      ),
    );
  }
}
