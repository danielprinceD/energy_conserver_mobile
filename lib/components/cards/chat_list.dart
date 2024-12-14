import 'package:energy_conserver_mobile/demo/chat_details.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:flutter/material.dart';

class MyChatCard extends StatelessWidget {

  final MyChatClass chat;
  const MyChatCard({super.key , required this.chat});

  @override
  Widget build(BuildContext context) {
    String timeString = '${chat.timestamp.hour}:${chat.timestamp.minute.toString().padLeft(2, '0')}';
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      leading: CircleAvatar(
        backgroundImage : NetworkImage(chat.avatarUrl),
      ),
      title: Text(chat.name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(chat.lastMessage),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(timeString, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
      onTap: () {
         Navigator.push(
          context , 
           MaterialPageRoute(builder: (context)=>MyChatDetail(chat: chat,))
         );
      },
    );
  }
}