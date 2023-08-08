import 'dart:async';

import 'package:calucltor/home_scr.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => home_scr()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Image(
        image: AssetImage('assets/playstore.png')),
        SizedBox(
          height: 10,
        ),
            Text(
              'Calculator',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,),
            ),
          ],
        ),
      ),
      // body: Center(
      //

    );
  }
}
