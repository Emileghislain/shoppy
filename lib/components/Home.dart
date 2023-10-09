import 'package:flutter/material.dart';
import 'package:shoppy/components/assets/CardForm.dart';
import 'package:shoppy/components/assets/CircleGraphCard.dart';
import 'package:shoppy/components/assets/Drawer.dart';
import 'package:shoppy/components/assets/GraphCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(5, 75, 105, 1),
        width: size.width * .7,
        child: DrawerNavigation(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 120, 171, 1),
              borderRadius: BorderRadius.circular(27)),
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        elevation: 5,
        child: Container(
          height: 60,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      i = 0;
                    });
                  },
                  icon: Image.asset(
                    "assets/images/Pipe_fill.png",
                    color: i == 0
                        ? Color.fromRGBO(0, 120, 171, 1)
                        : Color.fromRGBO(176, 176, 176, .6),
                  )),
              IconButton(
                  padding: EdgeInsets.only(right: 20),
                  onPressed: () {
                    setState(() {
                      i = 1;
                    });
                  },
                  icon: Image.asset("assets/images/Arhive_fill (1).png",
                      color: i == 1
                          ? Color.fromRGBO(0, 120, 171, 1)
                          : Color.fromRGBO(176, 176, 176, .6))),
              IconButton(
                  padding: EdgeInsets.only(left: 20),
                  onPressed: () {
                    setState(() {
                      i = 2;
                    });
                  },
                  icon: Image.asset("assets/images/Paper_fill.png",
                      color: i == 2
                          ? Color.fromRGBO(0, 120, 171, 1)
                          : Color.fromRGBO(176, 176, 176, .6))),
              IconButton(
                  onPressed: () {
                    setState(() {
                      i = 3;
                    });
                  },
                  icon: Image.asset("assets/images/Chat_alt_fill.png",
                      color: i == 3
                          ? Color.fromRGBO(0, 120, 171, 1)
                          : Color.fromRGBO(176, 176, 176, .6)))
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                color: Color.fromRGBO(5, 75, 105, 0.82),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/pexels-thirdman-7236839 2.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(5, 75, 105, 0.82), BlendMode.srcATop))),
          ),
          Positioned(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: size.width * .95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * .45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                _scaffoldKey.currentState!.openDrawer();
                              },
                              child: Image.asset("assets/images/Sort.png"),
                            ),
                            Container(
                              height: 30,
                              width: 106,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Text(
                                "Dashboard",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 75, 105, 1),
                                    fontFamily: "Montserrat-bold",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          "assets/images/pexels-thirdman-7236839 2.png",
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Text(
                                  "SHOPPY SELLER",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, .31),
                                      fontFamily: "Montserrat-bold",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Hi Christlight sh...",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: "Montserrat-bold",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  child: Row(
                                    children: [
                                      CardForm(
                                          image:
                                              "assets/images/Layers_fill.png",
                                          nb: "124",
                                          text1: "Reviews Submitted"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CardForm(
                                          image: "assets/images/Star 1.png",
                                          nb: "3,5",
                                          text1: "Average Rating"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CardForm(
                                          image:
                                              "assets/images/Arhive_fill.png",
                                          nb: "124",
                                          text1: "Total Products"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CardForm(
                                          image: "assets/images/Bag_fill.png",
                                          nb: "124",
                                          text1: "Total Orders")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: GraphCard(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: GraphCard(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: CircleGraphCard(),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          /* Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/Pipe_fill.png"),
                    Image.asset("assets/images/Arhive_fill.png", width: 40, height: 40,),
                    Image.asset("assets/images/Pipe_fill.png"),
                    Image.asset("assets/images/Arhive_fill.png", width: 40, height: 40,)
                  ],
                ),
                
              )
            ), */
        ],
      ),
    ));
  }
}
