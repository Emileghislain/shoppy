import 'package:flutter/material.dart';
import 'package:shoppy/components/assets/CardForm.dart';
import 'package:shoppy/components/assets/Drawer.dart';

class Order extends StatefulWidget{

  const Order({Key? key}):super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int i = 2;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override 
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(5, 75, 105, 1),
          width: size.width*.7,
          child: DrawerNavigation(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: Container(
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(color: Color.fromRGBO(0, 120, 171, 1), borderRadius: BorderRadius.circular(27)),
            child: Icon(Icons.add, size: 30,),
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
                  onPressed: (){
                    setState(() {
                      i=0;
                    });
                  }, 
                  icon: Image.asset("assets/images/Pipe_fill.png", color: i==0 ? Color.fromRGBO(0, 120, 171, 1) :Color.fromRGBO(176, 176, 176, .6),)
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 20),
                  onPressed: (){
                    setState(() {
                      i=1;
                    });
                  }, 
                  icon: Image.asset("assets/images/Arhive_fill (1).png", color: i==1 ? Color.fromRGBO(0, 120, 171, 1) :Color.fromRGBO(176, 176, 176, .6))
                ),
                IconButton(
                  padding: EdgeInsets.only(left: 20),
                  onPressed: (){
                    setState(() {
                      i=2;
                    });
                  }, 
                  icon: Image.asset("assets/images/Paper_fill.png", color: i==2 ? Color.fromRGBO(0, 120, 171, 1) :Color.fromRGBO(176, 176, 176, .6))
                ),
                IconButton(
                  onPressed: (){
                    setState(() {
                      i=3;
                    });
                  }, 
                  icon: Image.asset("assets/images/Chat_alt_fill.png", color: i==3 ? Color.fromRGBO(0, 120, 171, 1) :Color.fromRGBO(176, 176, 176, .6))
                )
              ],
            ),
          ),
        ),
        body: Stack(
          clipBehavior: Clip.none,
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
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/pexels-thirdman-7236839 3.png"),
                    alignment: Alignment.topCenter,
                    colorFilter: ColorFilter.mode(Color.fromRGBO(5, 75, 105, 0.82), BlendMode.srcATop)
                  )
                ),
              )
            ),
            Positioned(child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      width: size.width*.95,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width*.45,
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
                                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                                    child: Text("Orders", style: TextStyle(color: Color.fromRGBO(5, 75, 105, 1), fontFamily: "Montserrat-bold", fontSize: 16, fontWeight: FontWeight.w800),),
                                ),
                              ],
                            ),
                        ),
                        
                      ],
                    ),
                  )
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                CardForm(
                                  image: "assets/images/Bag_fill.png", 
                                  text1: "Validated Orders", 
                                  nb: "124"
                                ),
                                SizedBox(width: 20,),
                                CardForm(
                                  image: "assets/images/Bag_fill.png", 
                                  text1: "Rejected Orders", 
                                  nb: "124"
                                ),
                                SizedBox(width: 20,),
                                CardForm(
                                  image: "assets/images/Bag_fill.png", 
                                  text1: "Pending Orders", 
                                  nb: "124"
                                ),
                              ],
                            ),
                          ),
                        
                        ),
                          
                      ]
                    ),
                  )
                )
              ],
              )
            )
          ],
        )
      )
    );
  }
}