import 'package:flutter/material.dart';


class ChatSendMessage extends StatelessWidget{

  const ChatSendMessage({Key? key}):super(key: key);

  @override 
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.7,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 234, 234, 1),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('fff'),
      ),
    );
  }
}