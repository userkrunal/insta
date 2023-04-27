import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search "Enter Text"',hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.search_outlined,color: Colors.white,),
                    prefixIconColor: Colors.black54),
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_14.png"),
                    Photos("assets/img_15.png"),
                    Photos("assets/img_16.png"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_17.png"),
                    Photos("assets/img_18.png"),
                    Photos("assets/img_19.png"),


                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_20.png"),
                    Photos("assets/img_21.png"),
                    Photos("assets/img_22.png"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_23.png"),
                    Photos("assets/img_24.png"),
                    Photos("assets/img_25.png"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_26.png"),
                    Photos("assets/img_27.png"),
                    Photos("assets/img_28.png"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_29.png"),
                    Photos("assets/img_30.png"),
                    Photos("assets/img_31.png"),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Photos("assets/img_32.png"),
                    Photos("assets/img_33.png"),
                    Photos("assets/img_34.png"),
                  ],),

              ],)
            ],
          ),
        ),
      ),
    );
  }

  Widget Photos(String iphoto)
  {
    return Container(
        height: 110,
        width: 110,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("$iphoto",fit: BoxFit.cover),
        ),
        decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 3))
    );;
  }
}
