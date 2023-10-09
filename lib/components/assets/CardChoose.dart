import 'package:flutter/material.dart';


class CardChoose extends StatelessWidget{

  const CardChoose({Key? key}):super(key: key);
  @override 

  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return 
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width*.05),
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text("Choose an operation", style: TextStyle(color: Color.fromRGBO(0, 120, 171, 1), fontWeight: FontWeight.w700, fontSize: 17),),
            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Edit the product", textAlign: TextAlign.left, style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Modify the product information and change how it appears on the plateform", style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 10)),
                  SizedBox(height: 5,),
                  Divider()
                ]
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Edit the product", textAlign: TextAlign.left, style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w500),),
                      SizedBox(width: 30,),
                      Container(
                        width: 60,
                        height: 27,
                        decoration: BoxDecoration(color: Color.fromRGBO(5, 75, 105, 1), borderRadius: BorderRadius.circular(5)),
                        child: TextButton(
                          onPressed: () {
                            
                          }, 
                          child: Text("New", style: TextStyle(color: Colors.white, fontSize: 11),)),
                      )
                    ],
                  ),
                  SizedBox(height: 2,),
                  Text("Modify the product information and change how it appears on the plateform", style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 10)),
                  SizedBox(height: 5,),
                  Divider()
                ]
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Edit the product", textAlign: TextAlign.left, style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Modify the product information and change how it appears on the plateform", style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 10)),
                  SizedBox(height: 5,),
                  Divider()
                ]
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Edit the product", textAlign: TextAlign.left, style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Modify the product information and change how it appears on the plateform", style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 10)),
                  SizedBox(height: 5,),
                  Divider()
                ]
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Edit the product", textAlign: TextAlign.left, style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("You can deactivate this product if it is out of stock or you do not want to it to appear on the platform for some other reason", style: TextStyle(fontFamily: "Montserrat-bold", fontWeight: FontWeight.w400, fontSize: 10)),
                  SizedBox(height: 5,),
                  Divider()
                ]
              ),
            )
          ]
        ),
      );
  }
}