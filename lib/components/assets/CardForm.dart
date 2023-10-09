import 'package:flutter/material.dart';


class CardForm extends StatelessWidget{
  String image;
  String text1;
  String nb;
  CardForm({Key? key, required this.image, required this.text1, required this.nb}):super(key: key);
  @override 
  Widget build(BuildContext context){
    double width = 200;
    double height = 230;
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(image)
              ]
            ),
          ),
          Container(
            width: width*.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1, style: TextStyle(color: Color.fromRGBO(0, 120, 171, 1), fontFamily: "Montserrat-bold", fontSize: 18, fontWeight: FontWeight.w500),),
                Text(nb, style: TextStyle(color: Color.fromRGBO(0, 120, 171, 1), fontFamily: "Montserrat-bold", fontSize: 65, fontWeight: FontWeight.bold),)
              ],
            ),
          )

        ],
      )
    );
  }
}