import 'package:flutter/material.dart';
import 'package:shoppy/components/assets/CardChoose.dart';
import 'package:shoppy/components/assets/Drawer.dart';

class Products extends StatefulWidget{

  const Products({Key? key}): super(key: key);

  @override
  
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -243,
              left: -107,
              right: -76,
              child: Container(
                width: size.width,
                height: 600,
                decoration: BoxDecoration(
                // color: Color.fromRGBO(0, 120, 171, 1),
                  shape: BoxShape.circle,
                  
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/pexels-thirdman-7236839 3.png"),
                    alignment: Alignment.topCenter,
                    colorFilter: ColorFilter.mode(Color.fromRGBO(5, 75, 105, 0.82), BlendMode.srcATop)
                  )
                ),
              ),
            ),
            Positioned(
              child: Column(
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
                                    child: Text("Products", style: TextStyle(color: Color.fromRGBO(5, 75, 105, 1), fontFamily: "Montserrat-bold", fontSize: 16, fontWeight: FontWeight.w800),),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width*.9,
                                child: Text("Manage your products", style: TextStyle(color: Colors.white, fontFamily: "Montserrat-bold", fontWeight: FontWeight.bold, fontSize: 38),)
                              ),
                              SizedBox(height: 10,),
                              Text("15/20 active products", style: TextStyle(color: Colors.white, fontFamily: "Montserrat-bold", fontWeight: FontWeight.bold, fontSize: 18)),
                              SizedBox(height: 30,),
                              Container(
                                width: size.width*.9,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  border: Border.all(width: 1, color: Colors.white)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),

                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      prefixIcon: Icon(Icons.search, size: 30, color: Color.fromRGBO(5, 75, 105, 1),),
                                      prefixStyle: TextStyle(color: Color.fromRGBO(5, 75, 105, 1)),
                                      hintText: "Rechercher un produit", hintStyle: TextStyle(color: Color.fromRGBO(5, 75, 105, 1), fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 15)),
                                  ),
                                ),
                              ) 
                            ],
                          ),
                          SizedBox(height: 60,),
                          Container(
                            width: size.width,
                            height: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(126, 126, 126, 0.4)
                                ],
                                stops: [
                                  0.8,
                                  1
                                ]
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(radius: 5, backgroundColor: Colors.red,),
                                  SizedBox(width: 5,),
                                  Image.asset("assets/images/Rectangle 21.png"),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: size.width*.57,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Product name in", 
                                          style: TextStyle(color: Color.fromRGBO(0, 120, 171, 1), fontSize: 20, fontFamily: "Montserrat-bold", fontWeight: FontWeight.bold),),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a"
                                          , style: TextStyle(fontFamily: "Montserrat-bold", fontSize: 10),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Image.asset("assets/images/View_alt_fill.png"),
                                  Text("13"),
                                ]
                              ),
                            ),
                          ),
                          CardChoose() 
                        ]
                      ),
                    ),
                  ),
                ],
              )
            ), 
          ],
        ),
      )
    );
  }
}