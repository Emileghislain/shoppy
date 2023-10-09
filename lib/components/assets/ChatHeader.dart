import 'package:flutter/material.dart';
import 'package:shoppy/components/ChatContent.dart';

class ChatHeader extends StatefulWidget{
  String name;
  ChatHeader({Key? key, required this.name}):super(key: key);

  @override
  State<ChatHeader> createState() => _ChatHeaderState();
}

class _ChatHeaderState extends State<ChatHeader> {
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 100,
      color: Color.fromRGBO(5, 75, 105, 0.82),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatContent(name: widget.name)));
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.white, )
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Chat", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontFamily: "Montserrat-bold", fontSize: 16),),
                SizedBox(height: 5,),
                Text(widget.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontFamily: "Montserrat-bold", fontSize: 16),)
              ],
            )
          ],
        ),
      )
    );
  }
}