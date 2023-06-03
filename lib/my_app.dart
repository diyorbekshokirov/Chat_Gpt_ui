import 'package:flutter/material.dart';
import 'package:ui_chat_gpt/pages/page_one.dart';
import 'package:ui_chat_gpt/pages/page_two.dart';



class ChatGpt extends StatelessWidget {
  const ChatGpt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PageOne(),
      routes: {
        PageOne.id: (context) => const PageOne(),
        PageTwo.id: (context) => const PageTwo(),
      },
    );
  }
}
