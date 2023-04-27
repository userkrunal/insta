import 'package:flutter/material.dart';
import 'package:untitled2/insta_home/home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>InstaMain(),
      },
    )
  );
}