import 'package:flutter/material.dart';
import 'package:shoppy/components/Login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'dart:developer';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Color.fromRGBO(0, 120, 171, 0),
                  Color.fromRGBO(0, 120, 171, 0.43)
                ], begin: Alignment.topCenter),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/pexels-julia-m-cameron-4144099 1.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(5, 75, 105, 0.82), BlendMode.srcATop))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Untitled-1 1.png",
                    width: 170,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    "assets/images/Shoppy Cameroun Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..png"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width*.9,
                  child: Row(
                    children: [
                      Image.asset(i == 0
                        ? "assets/images/Ellipse 1.png"
                        : "assets/images/Ellipse 4.png"
                      ),
                      SizedBox(width: 15,),
                      Image.asset(i == 1
                        ? "assets/images/Ellipse 1.png"
                        : "assets/images/Ellipse 4.png"
                      ),
                      SizedBox(width: 15,),
                      Image.asset(i == 2
                        ? "assets/images/Ellipse 1.png"
                        : "assets/images/Ellipse 4.png"
                      ),
                      SizedBox(width: 15,),
                      Image.asset(i == 3
                        ? "assets/images/Ellipse 1.png"
                        : "assets/images/Ellipse 4.png"
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                /*SmoothPageIndicator(
                  controller: controller, 
                  count: count
                ),*/
                Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                if (i > 0) {
                                  i--;
                                }
                                log("message: $i");
                              });
                            },
                            child: Icon(
                              color: Colors.white,
                              Icons.arrow_back_ios_rounded,
                              size: 30,
                            ),
                          ),
                         TextButton(
                            onPressed: (){

                            }, 
                            child: i==3 ?Image.asset("assets/images/google.png") : Text("")
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              if (i < 3) {
                                i++;
                              }
                              if(i==3){
                                showDialog(
                                  context: context, 
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      contentPadding: EdgeInsets.all(0),
                                      content: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Container(
                                            height: 370,
                                            width: 370,
                                            alignment: Alignment.topCenter,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage("assets/images/pexels-samson-katt-5256140 2.png"), 
                                                fit: BoxFit.fitWidth,
                                              ) 
                                            ),
                                            
                                          ),
                                          Positioned.fill(
                                            bottom: 0,
                                            top: 200,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                  Color.fromRGBO(0, 120, 171, 0),
                                                  Color.fromRGBO(0, 120, 171, 1)
                                                  ],
                                                  stops: [
                                                    0,
                                                    1
                                                  ]
                                                ),
                                              ),
                                              child: Column(
                                              children: [
                                                TextButton(
                                                  onPressed: (){

                                                  }, 
                                                  child: Container(
                                                    width: size.width*.7,
                                                    padding: EdgeInsets.symmetric(vertical: 10),
                                                    decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1), borderRadius: BorderRadius.circular(20)),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.apple, color: Colors.white, size: 20,),
                                                        Text("Login via Apple", style: TextStyle(color: Colors.white , fontFamily: "Montserrat-bold", fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                                                      ],
                                                    ),
                                                  )
                                                ),
                                                TextButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                                  }, 
                                                  child: Container(
                                                    width: size.width*.7,
                                                    padding: EdgeInsets.symmetric(vertical: 10),
                                                    decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1), borderRadius: BorderRadius.circular(20)),
                                                    child: Text("Login via Shoppy", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.bold),),
                                                  )
                                                ),
                                                TextButton(
                                                  onPressed: (){

                                                  }, 
                                                  child: Container(
                                                    width: size.width*.7,
                                                    padding: EdgeInsets.symmetric(vertical: 10),
                                                    child: Text("Create my shop", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Manrope", fontWeight: FontWeight.w800, color: Colors.white ),),
                                                  )
                                                )
                                              ],
                                            )
                                          ,)
                                          )
                                        ],
                                      ),
                                    );
                                    
                                  }
                                );
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroSplash()));
                              }
                              log("message: $i");
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              border: Border.all(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Text(
                              'Continuer',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w900,
                                fontSize: 16
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
