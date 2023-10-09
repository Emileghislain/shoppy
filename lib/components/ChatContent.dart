import 'package:flutter/material.dart';
import 'package:shoppy/components/assets/ChatHeader.dart';
import 'package:shoppy/components/assets/ChatSendMessage.dart';

class ChatContent extends StatefulWidget {
  String name;
  ChatContent({Key? key, required this.name}) : super(key: key);

  @override
  State<ChatContent> createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Positioned(
            child: Column(
          children: [
            ChatHeader(name: widget.name),
          ],
        )),
        Positioned(
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: ChatSendMessage(),
                      ),
                    ]),
              )),
            ],
          ),
        )
      ]),
    ));
  }
}
