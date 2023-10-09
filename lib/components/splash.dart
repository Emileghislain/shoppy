import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoppy/components/Intro.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Intro())));
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 120, 171, 0.43),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/pexels-samson-katt-5256140 1.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(5, 75, 105, 0.82), BlendMode.srcATop))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/images/Untitled-1 1.png")],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
                width: size.width,
                child: Text(
                  'Copyright © Novobyte 2022',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.white,
                      fontFamily: "Montserrat"),
                  textAlign: TextAlign.center,
                )),
          )
        ],
      ),
    ));
  }
}
