import 'package:flutter/material.dart';
import 'package:shoppy/components/assets/ChatForm.dart';
import 'package:shoppy/components/assets/Drawer.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int i = 0;
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
            Positioned(
                left: -100,
                top: -243,
                right: -76,
                child: Container(
                  width: size.width,
                  height: 600,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/pexels-thirdman-7236839 3.png"),
                          alignment: Alignment.topCenter,
                          colorFilter: ColorFilter.mode(
                              Color.fromRGBO(5, 75, 105, 0.82),
                              BlendMode.srcATop))),
                )),
            Positioned(
                child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
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
                                    "Messages",
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
                        ],
                      ),
                    )),
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: size.width * .9,
                            child: Text(
                              "Chat with your clients",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-bold",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 38),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text("15 unread messages",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-bold",
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: size.width * .9,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Color.fromRGBO(5, 75, 105, 1),
                                  ),
                                  prefixStyle: TextStyle(
                                      color: Color.fromRGBO(5, 75, 105, 1)),
                                  hintText: "Rechercher une conversation",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(5, 75, 105, 1),
                                      fontFamily: "Montserrat-bold",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          width: size.width * .9,
                          child: ChatForm(
                            profile: 'assets/images/Rectangle 21.png',
                            name: "Tamko Clarence",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a hqf sds qfkfqs f",
                          ),
                        ),
                        Container(
                          width: size.width * .9,
                          child: ChatForm(
                            profile: 'assets/images/Rectangle 21.png',
                            name: "Tamko Clarence",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a hqf sds qfkfqs f",
                          ),
                        ),
                        Container(
                          width: size.width * .9,
                          child: ChatForm(
                            profile: 'assets/images/Rectangle 21.png',
                            name: "Tamko Clarence",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a hqf sds qfkfqs f",
                          ),
                        ),
                        Container(
                          width: size.width * .9,
                          child: ChatForm(
                            profile: 'assets/images/Rectangle 21.png',
                            name: "Tamko Clarence",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a hqf sds qfkfqs f",
                          ),
                        ),
                        Container(
                          width: size.width * .9,
                          child: ChatForm(
                            profile: 'assets/images/Rectangle 21.png',
                            name: "Tamko Clarence",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a hqf sds qfkfqs f",
                          ),
                        ),
                        Container(
                          width: size.width * .9,
                          child: ChatForm(
                            profile: 'assets/images/Rectangle 21.png',
                            name: "Tamko Clarence",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a hqf sds qfkfqs f",
                          ),
                        )
                      ],
                    ),
                  ]),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
