import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoppy/components/Chat.dart';
import 'package:shoppy/components/Home.dart';
import 'package:shoppy/components/Intro.dart';
import 'package:shoppy/components/Order.dart';
import 'package:shoppy/components/Products.dart';

class DrawerNavigation extends StatefulWidget{
  DrawerNavigation({Key? key}):super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
  
}

const List<String> list = <String>['English', 'French'];

List<Map<String, dynamic>> all = [
  {"name": "Dashboard", "image": "assets/images/Subtract.png", "url": Home()}, 
  {"name": "Products", "image": "assets/images/Arhive_fill (2).png", "url": Products()},
  {"name": "Orders", "image": "assets/images/Paper_fill (1).png", "url": Order()}, 
  {"name": "Settings", "image": "assets/images/Setting_fill.png", "url": Products()},
  {"name": "Chat", "image": "assets/images/Chat_alt_2_fill.png", "url": Chat()}, 
  {"name": "Community", "image": "assets/images/User_fill.png", "url": Products()},
  {"name": "Statuses", "image": "assets/images/Ellipse 56.png", "url": Products()},
  {"name": "Help & Assistance", "image": "assets/images/Info_fill.png", "url": Products()}, 
  {"name": "My Subscription Package", "image": "assets/images/GIft_fill.png", "url": Products()},
];

class _DrawerNavigationState extends State<DrawerNavigation> {
  String dropdownValue = list.first;
  
  @override 
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  hint: Text('Langue', style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),),
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: Colors.black,
                  underline: SizedBox(),
                  focusColor: Colors.white,
                  icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,),
                  alignment: Alignment.center,
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white, fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 12),),
                    );
                  }).toList(), 
                  value: dropdownValue,
                  onChanged: (value) {
                    setState(() {
                      log("message, $value");
                      dropdownValue = value.toString();
                    });
                  }
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.logout, size: 20, color: Colors.white,),
                      SizedBox(width: 5,),
                      Text("Sign out", style: TextStyle(color: Colors.white, fontFamily: "Montserrat-bold", fontWeight: FontWeight.w300, fontSize: 12),)
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(width: 3, color: Colors.white, )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(width: 4, color: Color.fromRGBO(0, 120, 170, 1), )
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color.fromRGBO(0, 120, 170, 1),
                    backgroundImage: AssetImage("assets/images/pexels-thirdman-7236839 2.png",),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("My Shop", style: TextStyle(color: Colors.white, fontFamily: "Montserrat-bold", fontSize: 30, fontWeight: FontWeight.bold),)
              
            ],
          ),
          SizedBox(height: 30,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemCount: all.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>all[index]['url']));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(all[index]['image']),
                        SizedBox(width: 15,),
                        Text(all[index]['name'], style: TextStyle(color: Colors.white, fontFamily: "Montserrat-Bold", fontWeight: FontWeight.w400, fontSize: 12),)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RichText(
              text: TextSpan(
                text: "2022 ",
                style: TextStyle(color: Colors.white, fontFamily: "Montserrat-Bold", fontWeight: FontWeight.w400, fontSize: 12),
                children: [
                  TextSpan(text: "Novobyte LLc", style: TextStyle(color: Colors.blue, fontFamily: "Montserrat-Bold", fontWeight: FontWeight.w400, fontSize: 12))
                ]
              )
            ),
          )
        ]
      ),
    );
  }
}