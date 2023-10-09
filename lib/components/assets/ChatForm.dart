import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoppy/components/ChatContent.dart';

class ChatForm extends StatefulWidget {
  String name;
  String text;
  String profile;
  ChatForm(
      {Key? key, required this.name, required this.text, required this.profile})
      : super(key: key);

  @override
  State<ChatForm> createState() => _ChatFormState();
}

class _ChatFormState extends State<ChatForm> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          i = 1;
          log("message");
        });
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatContent(
                      name: widget.name,
                    )));
        log("message $i");
      },
      child: Container(
        height: 100,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          i == 0
              ? CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                )
              : CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.white,
                ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(10, 10, 10, 1),
            backgroundImage: AssetImage(widget.profile),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Color.fromRGBO(5, 75, 105, 1),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-bold",
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontFamily: "Montserrat-bold", fontSize: 10),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
