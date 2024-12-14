import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/MyAppBar.dart';
import 'package:energy_conserver_mobile/components/cards/chat_list.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:flutter/material.dart';

class MyChats extends StatefulWidget {
  const MyChats({super.key});

  @override
  State<MyChats> createState() => _MyChatsState();
}

class _MyChatsState extends State<MyChats> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppData.bgColor),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return MyChatCard(chat: chat);
        },
      ),
    );
  }
}